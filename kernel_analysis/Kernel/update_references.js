#!/usr/bin/env node
/**
 * BoomBang Kernel - Update References Script
 * ==========================================
 * Updates all import statements and class references after deobfuscation.
 */

const fs = require('fs');
const path = require('path');

// Load mapping file
const MAPPING_FILE = path.join(__dirname, 'file_mapping.json');
const DEOBFUSCATED_DIR = path.join(__dirname, '../KernelDeobfuscated/src');

/**
 * Load the file mapping
 */
function loadMapping() {
    if (!fs.existsSync(MAPPING_FILE)) {
        console.error(`❌ Mapping file not found: ${MAPPING_FILE}`);
        console.error('   Run deobfuscate_kernel.py first!');
        process.exit(1);
    }

    const mapping = JSON.parse(fs.readFileSync(MAPPING_FILE, 'utf8'));
    console.log(`✓ Loaded mapping with ${Object.keys(mapping).length} entries`);
    return mapping;
}

/**
 * Build lookup tables for fast replacement
 */
function buildLookupTables(mapping) {
    const classNameMap = new Map(); // _cc7688 → Configuration
    const fileNameMap = new Map();   // _cc7688.as → Configuration.as
    const packageMap = new Map();    // Full package.ClassName mapping

    for (const [originalPath, info] of Object.entries(mapping)) {
        const originalFile = path.basename(originalPath);
        const originalClass = originalFile.replace('.as', '');
        const suggestedFile = info.suggested;
        const suggestedClass = suggestedFile.replace('.as', '');

        // Only map if actually renamed (not REVIEW_ files)
        if (!suggestedFile.startsWith('REVIEW_')) {
            classNameMap.set(originalClass, suggestedClass);
            fileNameMap.set(originalFile, suggestedFile);

            // Package mapping for full imports
            if (info.package) {
                const fullOriginal = `${info.package}.${originalClass}`;
                const fullSuggested = `${info.package}.${suggestedClass}`;
                packageMap.set(fullOriginal, fullSuggested);
            }
        }
    }

    console.log(`✓ Built lookup tables:`);
    console.log(`    Classes: ${classNameMap.size}`);
    console.log(`    Files: ${fileNameMap.size}`);
    console.log(`    Packages: ${packageMap.size}`);

    return { classNameMap, fileNameMap, packageMap };
}

/**
 * Update imports in a file
 */
function updateImports(content, lookupTables) {
    const { classNameMap, packageMap } = lookupTables;

    // Replace import statements: import src.config._cc7688;
    content = content.replace(
        /import\s+([\w.]+);/g,
        (match, importPath) => {
            // Check if full path needs replacement
            if (packageMap.has(importPath)) {
                return `import ${packageMap.get(importPath)};`;
            }

            // Check if just the class name needs replacement
            const parts = importPath.split('.');
            const className = parts[parts.length - 1];

            if (classNameMap.has(className)) {
                parts[parts.length - 1] = classNameMap.get(className);
                return `import ${parts.join('.')};`;
            }

            return match; // No change
        }
    );

    // Replace wildcard imports that reference renamed packages
    content = content.replace(
        /import\s+([\w.]+)\.\*;/g,
        (match, packagePath) => {
            // For now, keep wildcard imports as-is
            // Could be enhanced to check if package renamed
            return match;
        }
    );

    return content;
}

/**
 * Update class references in code
 */
function updateClassReferences(content, lookupTables) {
    const { classNameMap } = lookupTables;

    // Replace class references (be careful not to replace inside strings)
    for (const [oldName, newName] of classNameMap.entries()) {
        // Match class name as whole word (word boundaries)
        const regex = new RegExp(`\\b${escapeRegex(oldName)}\\b`, 'g');
        content = content.replace(regex, newName);
    }

    return content;
}

/**
 * Escape special regex characters
 */
function escapeRegex(str) {
    return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}

/**
 * Process a single file
 */
function processFile(filePath, lookupTables) {
    try {
        let content = fs.readFileSync(filePath, 'utf8');
        const original = content;

        // Update imports
        content = updateImports(content, lookupTables);

        // Update class references
        content = updateClassReferences(content, lookupTables);

        // Only write if changed
        if (content !== original) {
            fs.writeFileSync(filePath, content, 'utf8');
            return { changed: true, path: filePath };
        }

        return { changed: false, path: filePath };
    } catch (error) {
        console.error(`❌ Error processing ${filePath}: ${error.message}`);
        return { changed: false, path: filePath, error: true };
    }
}

/**
 * Recursively process all .as files
 */
function processDirectory(dir, lookupTables) {
    const results = {
        total: 0,
        changed: 0,
        errors: 0,
        changedFiles: []
    };

    function walk(currentDir) {
        const files = fs.readdirSync(currentDir);

        for (const file of files) {
            const fullPath = path.join(currentDir, file);
            const stat = fs.statSync(fullPath);

            if (stat.isDirectory()) {
                walk(fullPath);
            } else if (file.endsWith('.as')) {
                results.total++;

                const result = processFile(fullPath, lookupTables);

                if (result.error) {
                    results.errors++;
                } else if (result.changed) {
                    results.changed++;
                    results.changedFiles.push(path.relative(DEOBFUSCATED_DIR, fullPath));
                }

                // Progress indicator
                if (results.total % 50 === 0) {
                    process.stdout.write(`\r  Processing... ${results.total} files`);
                }
            }
        }
    }

    walk(dir);
    process.stdout.write('\r'); // Clear progress line

    return results;
}

/**
 * Create backup before modifying
 */
function createBackup() {
    const backupDir = path.join(__dirname, '../KernelDeobfuscated_backup');

    if (fs.existsSync(backupDir)) {
        console.log('⚠  Backup already exists, skipping...');
        return false;
    }

    console.log('Creating backup...');
    fs.cpSync(DEOBFUSCATED_DIR, backupDir, { recursive: true });
    console.log(`✓ Backup created at ${backupDir}`);
    return true;
}

/**
 * Main function
 */
function main() {
    console.log('=' . repeat(60));
    console.log('BoomBang Kernel - Update References Tool');
    console.log('=' .repeat(60));
    console.log();

    // Check if deobfuscated directory exists
    if (!fs.existsSync(DEOBFUSCATED_DIR)) {
        console.error(`❌ Deobfuscated directory not found: ${DEOBFUSCATED_DIR}`);
        console.error('   Run deobfuscate_kernel.py first!');
        process.exit(1);
    }

    // Load mapping
    console.log('STEP 1: Loading file mapping...');
    const mapping = loadMapping();
    console.log();

    // Build lookup tables
    console.log('STEP 2: Building lookup tables...');
    const lookupTables = buildLookupTables(mapping);
    console.log();

    // Create backup
    console.log('STEP 3: Creating backup...');
    createBackup();
    console.log();

    // Process files
    console.log('STEP 4: Updating references...');
    console.log(`  Directory: ${DEOBFUSCATED_DIR}`);
    console.log();

    const results = processDirectory(DEOBFUSCATED_DIR, lookupTables);

    // Report results
    console.log();
    console.log('=' .repeat(60));
    console.log('UPDATE SUMMARY');
    console.log('=' .repeat(60));
    console.log(`  Total files processed: ${results.total}`);
    console.log(`  Files modified: ${results.changed}`);
    console.log(`  Errors: ${results.errors}`);
    console.log();

    if (results.changed > 0) {
        console.log('Modified files:');
        results.changedFiles.slice(0, 20).forEach(file => {
            console.log(`    ${file}`);
        });

        if (results.changedFiles.length > 20) {
            console.log(`    ... and ${results.changedFiles.length - 20} more`);
        }
    }

    console.log();
    console.log('✓ References updated successfully!');
    console.log('=' .repeat(60));
}

if (require.main === module) {
    main();
}
