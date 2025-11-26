#!/usr/bin/env python3
"""
BoomBang Kernel Deobfuscation Script
====================================
Analyzes obfuscated ActionScript files and renames them with descriptive names.
"""

import os
import re
import json
import shutil
from pathlib import Path
from typing import Dict, List, Tuple

# Known mappings from previous analysis
KNOWN_MAPPINGS = {
    # Core System
    "_cc7688.as": "Configuration.as",
    "_jl5367.as": "SocketManager.as",
    "_kr10933.as": "PacketBuilder.as",
    "_bc9270.as": "NetworkEventWrapper.as",
    "_te13472.as": "MessageTypeConstants.as",

    # Crypto/Security
    "KeyExchange.as": "KeyExchange.as",  # Already clear
    "CryptoTools.as": "CryptoTools.as",  # Already clear
    "cryptoEventsCaller.as": "CryptoEventDispatcher.as",
    "packetEvents.as": "PacketEventHandler.as",
    "irrcrpt.as": "CaesarCipher.as",

    # Login
    "_pf11103.as": "LoginModule.as",
    "_kr10189.as": "LoginUIController.as",
    "_qd13741.as": "LoginProtocol.as",
    "_wg2840.as": "CodeVerificationHelper.as",
    "_aq7621.as": "LoginEvents.as",

    # Configuration
    "_vr1926.as": "OperatorsConfigLoader.as",
    "_bh8496.as": "NotificationsConfigLoader.as",
    "_sw9805.as": "ConfigLoader.as",
    "_ly14211.as": "RuntimeParameters.as",

    # Application Core
    "_wc15106.as": "ApplicationMain.as",
    "_ub4607.as": "ResourceLoader.as",
    "_vy3822.as": "ResourceManager.as",

    # Chat System
    "_na10583.as": "ChatBase.as",
    "_db12795.as": "ChatDataModel.as",
    "_fi6049.as": "ChatController.as",
    "_vx13143.as": "ChatManager.as",

    # Data/Models
    "_hv12530.as": "UserSession.as",
    "_dw1395.as": "LocaleManager.as",
    "_ly14211.as": "RuntimeParams.as",

    # Utils
    "_eq14922.as": "Utils.as",
    "_xv14798.as": "StringUtils.as",
    "_cy398.as": "MathUtils.as",
    "_kg12861.as": "DateUtils.as",
    "_tq2768.as": "DisplayUtils.as",
    "_fh6432.as": "ColorUtils.as",

    # Scene Management
    "_vd678.as": "SceneManager.as",
    "_yc4848.as": "SceneTransition.as",
    "_fv12930.as": "SceneLoader.as",
    "_kq15543.as": "SceneChooser.as",

    # NPC System
    "_ct6217.as": "NPCController.as",
    "_vo16097.as": "NPCTypeDefinitions.as",
    "_jo1398.as": "NPCEvents.as",

    # Multiplayer
    "_qs5969.as": "MultiplayerLobby.as",
    "_qp15086.as": "MultiplayerSession.as",
    "_hv11591.as": "MultiplayerGameMechanics.as",

    # Person/Avatar
    "_tl4091.as": "PersonBase.as",
    "_um8624.as": "PersonAnimation.as",
    "_ta2443.as": "PersonController.as",
    "_ei4944.as": "PersonData.as",

    # UI Components
    "_rn8936.as": "UIButton.as",
    "_ca11681.as": "UIPanel.as",
    "_wk9007.as": "UITextField.as",
    "_lx1779.as": "UIWindow.as",
    "_pr2018.as": "UIDialog.as",

    # Service Container
    "_lh7543.as": "ServiceLocator.as",
    "_wk782.as": "ServiceContainer.as",
    "_rb9290.as": "ServiceProvider.as",
    "_dw1395.as": "ServiceFactory.as",
    "_wl11587.as": "ServiceManager.as",

    # Objects
    "_fk7766.as": "GameObject.as",
    "_pn6073.as": "SceneObject.as",
    "_mg605.as": "SceneObjectManager.as",

    # Logs
    "_qn13596.as": "Logger.as",
    "_fr7722.as": "LogLevel.as",
    "_co14706.as": "LogFormatter.as",

    # Loaders
    "_mk16025.as": "AssetLoader.as",
    "_ea15462.as": "SWFLoader.as",

    # Events
    "_jq5572.as": "EventDispatcher.as",
    "_bc4777.as": "GoogleAnalytics.as",

    # Scene Objects Data
    "_mx198.as": "SceneObjectData.as",
    "_px10602.as": "SceneObjectProperties.as",
    "_hl15578.as": "SceneObjectRenderer.as",

    # Scene Types
    "_il6324.as": "SceneType.as",
    "_bq10515.as": "SceneTypeIsland.as",
    "_il8993.as": "SceneTypePrivate.as",
    "_it11308.as": "SceneTypePublic.as",

    # Texts/i18n
    "_yh6510.as": "TextManager.as",
    "_ei10851.as": "TextLocalizer.as",

    # Modules
    "_pk5732.as": "ModuleBase.as",
    "_bi12161.as": "ModuleManager.as",
    "_hq14072.as": "ModuleLoader.as",

    # Interfaz
    "_je14031.as": "InterfazManager.as",
    "_xt81056.as": "InterfazController.as",

    # BPad
    "_id1792.as": "BPadController.as",
    "_qi8752.as": "BPadUI.as",

    # Credits
    "_sd10289.as": "CreditsManager.as",

    # Banners
    "_fh11348.as": "BannerManager.as",

    # Estado Pociones
    "_py1516.as": "PotionStateManager.as",

    # Ir Alli (Go There)
    "_fx10821.as": "NavigationManager.as",

    # Enter Scene
    "_fv12930.as": "EnterSceneController.as",

    # Cat Objects
    "_dp11732.as": "CatalogObject.as",

    # Tutorial
    "_do5953.as": "TutorialManager.as",
    "_vk15050.as": "TutorialGUI.as",

    # Rankings
    "_ch13727.as": "RankingsWindow.as",

    # Single Player Games
    "_ij925.as": "SinglePlayerGameController.as",

    # Baneos (Bans)
    "_mj624.as": "BanHandler.as",

    # Choose Isla
    "_kq15543.as": "IslandChooser.as",
}

# Categories for auto-detection
CATEGORY_PATTERNS = {
    "Controller": ["controller", "manage", "handler", "dispatcher"],
    "Model": ["data", "model", "info", "state"],
    "View": ["view", "gui", "window", "panel", "component"],
    "Manager": ["manager", "loader", "factory"],
    "Utils": ["utils", "helper", "tools"],
    "Events": ["event", "listener", "callback"],
    "Config": ["config", "settings", "parameters"],
}

def analyze_as_file(filepath: Path) -> Dict[str, any]:
    """Analyze an ActionScript file to determine its purpose"""
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()

        # Extract package
        package_match = re.search(r'package\s+([\w.]+)', content)
        package = package_match.group(1) if package_match else ""

        # Extract class name
        class_match = re.search(r'public\s+class\s+(\w+)', content)
        class_name = class_match.group(1) if class_match else filepath.stem

        # Extract extends
        extends_match = re.search(r'extends\s+([\w.]+)', content)
        extends = extends_match.group(1) if extends_match else None

        # Extract implements
        implements_matches = re.findall(r'implements\s+([\w.,\s]+)', content)
        implements = implements_matches[0].split(',') if implements_matches else []

        # Extract imports
        imports = re.findall(r'import\s+([\w.]+(?:\.\*)?);', content)

        # Extract public methods
        methods = re.findall(r'public\s+function\s+(\w+)', content)

        # Extract public variables/constants
        variables = re.findall(r'public\s+(?:static\s+)?(?:const|var)\s+(\w+)', content)

        # Count lines
        lines = len(content.split('\n'))

        return {
            "filepath": str(filepath),
            "filename": filepath.name,
            "package": package,
            "class_name": class_name,
            "extends": extends,
            "implements": implements,
            "imports": imports,
            "methods": methods,
            "variables": variables,
            "lines": lines,
            "content_sample": content[:500]  # First 500 chars for analysis
        }
    except Exception as e:
        print(f"Error analyzing {filepath}: {e}")
        return None

def suggest_name(analysis: Dict, context: str = "") -> str:
    """Suggest a descriptive name based on file analysis"""
    if not analysis:
        return None

    filename = analysis["filename"]
    class_name = analysis["class_name"]
    package = analysis["package"]
    extends = analysis["extends"]
    methods = analysis["methods"]

    # Check known mappings first
    if filename in KNOWN_MAPPINGS:
        return KNOWN_MAPPINGS[filename]

    # If class name is already descriptive (not obfuscated)
    if len(class_name) > 5 and not class_name.startswith('_'):
        return filename

    # Auto-detect based on patterns
    content_lower = analysis["content_sample"].lower()

    # Detect category
    suggested_category = ""
    for category, patterns in CATEGORY_PATTERNS.items():
        if any(pattern in content_lower for pattern in patterns):
            suggested_category = category
            break

    # Build name from package hints
    package_parts = package.split('.')
    if len(package_parts) > 1:
        module_hint = package_parts[-1]

        # Convert to PascalCase
        module_name = ''.join(word.capitalize() for word in module_hint.split('_'))

        if suggested_category:
            return f"{module_name}{suggested_category}.as"
        else:
            return f"{module_name}.as"

    # Fallback: keep original name but mark as needing review
    return f"REVIEW_{filename}"

def create_mapping_file(src_dir: Path, output_file: Path):
    """Scan all .as files and create a mapping file"""
    mappings = {}

    print(f"Scanning {src_dir} for ActionScript files...")

    as_files = list(src_dir.rglob("*.as"))
    total = len(as_files)

    for idx, filepath in enumerate(as_files, 1):
        rel_path = filepath.relative_to(src_dir)

        print(f"[{idx}/{total}] Analyzing {rel_path}...")

        analysis = analyze_as_file(filepath)
        if analysis:
            suggested_name = suggest_name(analysis, context=str(rel_path.parent))

            mappings[str(rel_path)] = {
                "original": str(rel_path),
                "suggested": suggested_name,
                "package": analysis["package"],
                "class_name": analysis["class_name"],
                "lines": analysis["lines"],
                "extends": analysis["extends"],
                "methods_count": len(analysis["methods"]),
            }

    # Save mapping
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(mappings, f, indent=2, ensure_ascii=False)

    print(f"\n✓ Mapping saved to {output_file}")
    print(f"  Total files: {total}")
    print(f"  Mapped: {len(mappings)}")

    return mappings

def apply_deobfuscation(src_dir: Path, dest_dir: Path, mapping_file: Path):
    """Apply deobfuscation by copying and renaming files"""

    with open(mapping_file, 'r', encoding='utf-8') as f:
        mappings = json.load(f)

    print(f"\nApplying deobfuscation...")
    print(f"  Source: {src_dir}")
    print(f"  Destination: {dest_dir}")

    for original_rel_path, mapping in mappings.items():
        original_path = src_dir / original_rel_path
        suggested_name = mapping["suggested"]

        # Build destination path
        dest_rel_dir = Path(original_rel_path).parent
        dest_file = dest_dir / dest_rel_dir / suggested_name

        # Create directories
        dest_file.parent.mkdir(parents=True, exist_ok=True)

        # Copy file
        shutil.copy2(original_path, dest_file)

        print(f"  {original_rel_path} → {dest_rel_dir / suggested_name}")

    print(f"\n✓ Deobfuscation complete!")
    print(f"  Files copied: {len(mappings)}")

def main():
    # Paths
    kernel_dir = Path("/Users/pedropablomunozpenafiel/Documents/BoombangServer/Kernel/scripts/src")
    output_dir = Path("/Users/pedropablomunozpenafiel/Documents/BoombangServer/KernelDeobfuscated/src")
    mapping_file = Path("/Users/pedropablomunozpenafiel/Documents/BoombangServer/Kernel/file_mapping.json")

    print("=" * 60)
    print("BoomBang Kernel Deobfuscation Tool")
    print("=" * 60)
    print()

    # Step 1: Create mapping
    print("STEP 1: Analyzing files and creating mapping...")
    mappings = create_mapping_file(kernel_dir, mapping_file)

    # Step 2: Apply deobfuscation
    print("\nSTEP 2: Applying deobfuscation...")
    apply_deobfuscation(kernel_dir, output_dir, mapping_file)

    # Step 3: Report statistics
    print("\n" + "=" * 60)
    print("DEOBFUSCATION SUMMARY")
    print("=" * 60)

    known_count = sum(1 for m in mappings.values() if not m["suggested"].startswith("REVIEW_"))
    review_count = sum(1 for m in mappings.values() if m["suggested"].startswith("REVIEW_"))

    print(f"  ✓ Successfully renamed: {known_count}")
    print(f"  ⚠ Need manual review: {review_count}")
    print(f"  📁 Output directory: {output_dir}")
    print(f"  📄 Mapping file: {mapping_file}")
    print()
    print("Next steps:")
    print("  1. Review files marked with 'REVIEW_' prefix")
    print("  2. Update imports/references using Node.js script")
    print("  3. Test compilation")
    print("=" * 60)

if __name__ == "__main__":
    main()
