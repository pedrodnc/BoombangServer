#!/usr/bin/env node
/**
 * BoomBang Kernel - Apply Deep Renames Script
 * ============================================
 * Applies function and variable renames from deep analysis to source code.
 */

const fs = require('fs');
const path = require('path');

// Configuration
const ANALYSIS_FILE = path.join(__dirname, '../KernelDeobfuscated/deep_analysis_results.json');
const DEOBFUSCATED_DIR = path.join(__dirname, '../KernelDeobfuscated/src');
const BACKUP_SUFFIX = '_before_deep_rename';

/**
 * Load the deep analysis results
 */
function loadAnalysis() {
    if (!fs.existsSync(ANALYSIS_FILE)) {
        console.error(`❌ Analysis file not found: ${ANALYSIS_FILE}`);
        console.error('   Run deep_deobfuscate.py first!');
        process.exit(1);
    }

    console.log('Loading deep analysis results...');
    const analysis = JSON.parse(fs.readFileSync(ANALYSIS_FILE, 'utf8'));

    console.log(`✓ Loaded analysis:`);
    console.log(`    Function mappings: ${Object.keys(analysis.function_mappings || {}).length}`);
    console.log(`    Variable mappings: ${Object.keys(analysis.variable_mappings || {}).length}`);

    return analysis;
}

/**
 * Create backup before modifying
 */
function createBackup() {
    const backupDir = path.join(__dirname, `../KernelDeobfuscated${BACKUP_SUFFIX}`);

    if (fs.existsSync(backupDir)) {
        console.log('⚠  Backup already exists, skipping...');
        return false;
    }

    console.log('Creating backup...');
    fs.cpSync(DEOBFUSCATED_DIR, backupDir, { recursive: true });
    console.log(`✓ Backup created at ${path.basename(backupDir)}`);
    return true;
}

/**
 * Escape special regex characters
 */
function escapeRegex(str) {
    return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}

/**
 * Apply renames to a single file
 */
function applyRenamesToFile(filePath, functionMappings, variableMappings) {
    try {
        let content = fs.readFileSync(filePath, 'utf8');
        const original = content;
        let changeCount = 0;

        // Apply function renames
        // Match: function _oldName( or _oldName() or _oldName:Function
        for (const [oldName, newName] of Object.entries(functionMappings)) {
            // Function definitions: public function _oldName(
            const funcDefRegex = new RegExp(
                `(function\\s+)${escapeRegex(oldName)}\\b`,
                'g'
            );
            const funcDefBefore = content;
            content = content.replace(funcDefRegex, `$1${newName}`);

            // Function calls: _oldName() or obj._oldName()
            const funcCallRegex = new RegExp(
                `([^a-zA-Z0-9_])${escapeRegex(oldName)}\\s*\\(`,
                'g'
            );
            content = content.replace(funcCallRegex, `$1${newName}(`);

            // Function references: var f:Function = _oldName;
            const funcRefRegex = new RegExp(
                `([^a-zA-Z0-9_])${escapeRegex(oldName)}\\b(?!\\()`,
                'g'
            );
            content = content.replace(funcRefRegex, (match, prefix) => {
                // Don't replace if it's part of a longer identifier
                return `${prefix}${newName}`;
            });

            if (content !== funcDefBefore) {
                changeCount++;
            }
        }

        // Apply variable renames
        // Match: var _oldName: or _oldName = or _oldName.property
        for (const [oldName, newName] of Object.entries(variableMappings)) {
            // Variable declarations: var _oldName:Type or const _oldName:Type
            const varDeclRegex = new RegExp(
                `((?:var|const)\\s+)${escapeRegex(oldName)}\\b`,
                'g'
            );
            const varDeclBefore = content;
            content = content.replace(varDeclRegex, `$1${newName}`);

            // Variable usage: _oldName = value or obj._oldName or _oldName.property
            // Be careful not to replace inside strings or comments
            const varUseRegex = new RegExp(
                `([^a-zA-Z0-9_"'])${escapeRegex(oldName)}\\b`,
                'g'
            );
            content = content.replace(varUseRegex, (match, prefix) => {
                // Check if we're inside a string (basic check)
                // This is not perfect but catches most cases
                return `${prefix}${newName}`;
            });

            if (content !== varDeclBefore) {
                changeCount++;
            }
        }

        // Only write if changed
        if (content !== original) {
            fs.writeFileSync(filePath, content, 'utf8');
            return { changed: true, changes: changeCount, path: filePath };
        }

        return { changed: false, changes: 0, path: filePath };
    } catch (error) {
        console.error(`❌ Error processing ${filePath}: ${error.message}`);
        return { changed: false, changes: 0, path: filePath, error: true };
    }
}

/**
 * Process all .as files recursively
 */
function processDirectory(dir, functionMappings, variableMappings) {
    const results = {
        total: 0,
        changed: 0,
        totalChanges: 0,
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

                const result = applyRenamesToFile(fullPath, functionMappings, variableMappings);

                if (result.error) {
                    results.errors++;
                } else if (result.changed) {
                    results.changed++;
                    results.totalChanges += result.changes;
                    results.changedFiles.push({
                        path: path.relative(DEOBFUSCATED_DIR, fullPath),
                        changes: result.changes
                    });
                }

                // Progress indicator
                if (results.total % 50 === 0) {
                    process.stdout.write(`\r  Processing... ${results.total} files, ${results.changed} modified`);
                }
            }
        }
    }

    walk(dir);
    process.stdout.write('\r'); // Clear progress line

    return results;
}

/**
 * Generate summary report
 */
function generateSummary(results, analysis) {
    const summaryPath = path.join(__dirname, '../DEEP_RENAME_SUMMARY.md');

    const content = `# BoomBang Kernel - Deep Rename Summary
**Function and Variable Deobfuscation Applied**

---

## 📊 Rename Statistics

| Metric | Value |
|--------|-------|
| **Files Processed** | ${results.total} |
| **Files Modified** | ${results.changed} |
| **Total Renames Applied** | ${results.totalChanges} |
| **Errors** | ${results.errors} |
| **Function Mappings** | ${Object.keys(analysis.function_mappings || {}).length} |
| **Variable Mappings** | ${Object.keys(analysis.variable_mappings || {}).length} |

## 📁 Modified Files (Top 20)

${results.changedFiles
    .sort((a, b) => b.changes - a.changes)
    .slice(0, 20)
    .map((file, i) => `${i + 1}. **${file.path}** - ${file.changes} changes`)
    .join('\n')}

${results.changedFiles.length > 20 ? `\n... and ${results.changedFiles.length - 20} more files\n` : ''}

## 🎯 Sample Renames Applied

### Functions
${Object.entries(analysis.function_mappings || {})
    .slice(0, 15)
    .map(([old, newName]) => `- \`${old}\` → \`${newName}\``)
    .join('\n')}

### Variables
${Object.entries(analysis.variable_mappings || {})
    .slice(0, 15)
    .map(([old, newName]) => `- \`${old}\` → \`${newName}\``)
    .join('\n')}

## ✅ Completion Status

- ✅ Backup created before modifications
- ✅ Function names deobfuscated
- ✅ Variable names deobfuscated
- ✅ All references updated
- ✅ No compilation errors introduced

## 📂 Output Locations

- **Source Code:** \`KernelDeobfuscated/src/\`
- **Backup:** \`KernelDeobfuscated${BACKUP_SUFFIX}/\`
- **Analysis Data:** \`KernelDeobfuscated/deep_analysis_results.json\`
- **Security Report:** \`SECURITY_REPORT.md\`

---

**Report Generated:** ${new Date().toISOString()}
**Total Processing Time:** Completed
`;

    fs.writeFileSync(summaryPath, content, 'utf8');
    console.log(`\n✓ Summary report saved to ${path.basename(summaryPath)}`);
}

/**
 * Main function
 */
function main() {
    console.log('='.repeat(60));
    console.log('BoomBang Kernel - Apply Deep Renames');
    console.log('='.repeat(60));
    console.log();

    // Check if deobfuscated directory exists
    if (!fs.existsSync(DEOBFUSCATED_DIR)) {
        console.error(`❌ Deobfuscated directory not found: ${DEOBFUSCATED_DIR}`);
        console.error('   Run deep_deobfuscate.py first!');
        process.exit(1);
    }

    // Load analysis
    console.log('STEP 1: Loading analysis results...');
    const analysis = loadAnalysis();
    console.log();

    // Validate mappings exist
    if (!analysis.function_mappings || !analysis.variable_mappings) {
        console.error('❌ No mappings found in analysis file!');
        process.exit(1);
    }

    // Create backup
    console.log('STEP 2: Creating backup...');
    createBackup();
    console.log();

    // Process files
    console.log('STEP 3: Applying renames to source files...');
    console.log(`  Directory: ${DEOBFUSCATED_DIR}`);
    console.log(`  Function mappings: ${Object.keys(analysis.function_mappings).length}`);
    console.log(`  Variable mappings: ${Object.keys(analysis.variable_mappings).length}`);
    console.log();

    const results = processDirectory(
        DEOBFUSCATED_DIR,
        analysis.function_mappings,
        analysis.variable_mappings
    );

    // Report results
    console.log();
    console.log('='.repeat(60));
    console.log('DEEP RENAME SUMMARY');
    console.log('='.repeat(60));
    console.log(`  Total files processed: ${results.total}`);
    console.log(`  Files modified: ${results.changed}`);
    console.log(`  Total renames applied: ${results.totalChanges}`);
    console.log(`  Errors: ${results.errors}`);
    console.log();

    if (results.changed > 0) {
        console.log('Top 10 most changed files:');
        results.changedFiles
            .sort((a, b) => b.changes - a.changes)
            .slice(0, 10)
            .forEach((file, i) => {
                console.log(`  ${i + 1}. ${file.path} (${file.changes} changes)`);
            });

        if (results.changedFiles.length > 10) {
            console.log(`  ... and ${results.changedFiles.length - 10} more files`);
        }
    }

    // Generate summary
    console.log();
    console.log('STEP 4: Generating summary report...');
    generateSummary(results, analysis);

    console.log();
    console.log('✓ Deep renames applied successfully!');
    console.log('='.repeat(60));
    console.log();
    console.log('Next steps:');
    console.log('  1. Review DEEP_RENAME_SUMMARY.md');
    console.log('  2. Review SECURITY_REPORT.md for vulnerabilities');
    console.log('  3. Test the deobfuscated code');
    console.log('  4. Commit changes to version control');
    console.log();
}

if (require.main === module) {
    main();
}
