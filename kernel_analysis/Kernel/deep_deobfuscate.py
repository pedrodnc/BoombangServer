#!/usr/bin/env python3
"""
BoomBang Kernel - Deep Content Deobfuscation & Security Analysis
================================================================
Analyzes internal code (functions, variables) and finds security vulnerabilities.
"""

import os
import re
import json
from pathlib import Path
from typing import Dict, List, Tuple, Set
from collections import defaultdict

# OWASP Top 10 vulnerability patterns
VULNERABILITY_PATTERNS = {
    "A01:2021-Broken Access Control": [
        {
            "name": "Missing Authentication Check",
            "pattern": r'public\s+function\s+(\w+)[^{]*\{(?:(?!\bif\b.*\bauth|\bif\b.*\blogin|\bif\b.*\bpermission).)*$',
            "severity": "HIGH",
            "description": "Function may lack authentication checks"
        },
        {
            "name": "Unrestricted Direct Object Reference",
            "pattern": r'\.getChildByName\(["\'](\w+)["\']\)',
            "severity": "MEDIUM",
            "description": "Direct object access without validation"
        }
    ],

    "A02:2021-Cryptographic Failures": [
        {
            "name": "Weak Encryption - RC4",
            "pattern": r'\bRC4\b|\brc4\b',
            "severity": "HIGH",
            "description": "RC4 is cryptographically broken, use AES-256-GCM"
        },
        {
            "name": "Hardcoded Encryption Key",
            "pattern": r'(?:key|secret|password)\s*[:=]\s*["\'][\w\d]{8,}["\']',
            "severity": "CRITICAL",
            "description": "Hardcoded cryptographic key found"
        },
        {
            "name": "Insecure Random",
            "pattern": r'Math\.random\(\)',
            "severity": "MEDIUM",
            "description": "Math.random() is not cryptographically secure"
        }
    ],

    "A03:2021-Injection": [
        {
            "name": "SQL Injection Risk",
            "pattern": r'(?:SELECT|INSERT|UPDATE|DELETE)[^;]*\+\s*\w+',
            "severity": "CRITICAL",
            "description": "Potential SQL injection via string concatenation"
        },
        {
            "name": "Command Injection",
            "pattern": r'exec\(|system\(|shell\(',
            "severity": "CRITICAL",
            "description": "Potential command injection"
        },
        {
            "name": "XSS - Unsafe HTML",
            "pattern": r'\.htmlText\s*=|\.innerHTML\s*=',
            "severity": "HIGH",
            "description": "Potential XSS via unsafe HTML assignment"
        },
        {
            "name": "URL Parameter Injection",
            "pattern": r'URLRequest\([^)]*\+\s*\w+',
            "severity": "HIGH",
            "description": "URL constructed with user input, potential injection"
        }
    ],

    "A04:2021-Insecure Design": [
        {
            "name": "Client-Side Security Logic",
            "pattern": r'if\s*\([^)]*(?:admin|isAdmin|hasPermission)[^)]*\)',
            "severity": "HIGH",
            "description": "Security check on client-side (easily bypassed)"
        },
        {
            "name": "Sensitive Data in Client",
            "pattern": r'(?:password|secret|apiKey|token)\s*[:=]',
            "severity": "MEDIUM",
            "description": "Sensitive data stored in client code"
        }
    ],

    "A05:2021-Security Misconfiguration": [
        {
            "name": "Debug Mode Enabled",
            "pattern": r'(?:debug|DEBUG)\s*[:=]\s*true',
            "severity": "MEDIUM",
            "description": "Debug mode may be enabled in production"
        },
        {
            "name": "Permissive CORS",
            "pattern": r'allowDomain\s*\(\s*["\*]["\']',
            "severity": "HIGH",
            "description": "Wildcard domain allows cross-origin attacks"
        },
        {
            "name": "Disabled Security Features",
            "pattern": r'(?:security|validation)\s*[:=]\s*false',
            "severity": "HIGH",
            "description": "Security feature explicitly disabled"
        }
    ],

    "A07:2021-Identification and Authentication Failures": [
        {
            "name": "Weak Password Policy",
            "pattern": r'password\.length\s*[<>=]+\s*[1-5]',
            "severity": "HIGH",
            "description": "Weak password length requirement"
        },
        {
            "name": "No Session Timeout",
            "pattern": r'session(?!.*timeout|.*expire)',
            "severity": "MEDIUM",
            "description": "Session may lack timeout mechanism"
        },
        {
            "name": "Cleartext Password Storage",
            "pattern": r'(?<!hash)(?<!encrypt)password\s*=\s*\w+',
            "severity": "CRITICAL",
            "description": "Password may be stored in cleartext"
        }
    ],

    "A08:2021-Software and Data Integrity Failures": [
        {
            "name": "Insecure Deserialization",
            "pattern": r'(?:unserialize|deserialize|JSON\.parse)\s*\(',
            "severity": "HIGH",
            "description": "Deserialization without validation"
        },
        {
            "name": "Dynamic Code Execution",
            "pattern": r'eval\s*\(',
            "severity": "CRITICAL",
            "description": "eval() allows arbitrary code execution"
        }
    ],

    "A09:2021-Security Logging and Monitoring Failures": [
        {
            "name": "Missing Error Logging",
            "pattern": r'catch\s*\([^)]+\)\s*\{\s*\}',
            "severity": "MEDIUM",
            "description": "Empty catch block, errors not logged"
        },
        {
            "name": "Sensitive Data in Logs",
            "pattern": r'(?:log|trace|console)\s*\([^)]*(?:password|token|secret)',
            "severity": "HIGH",
            "description": "Sensitive data may be logged"
        }
    ],

    "A10:2021-Server-Side Request Forgery (SSRF)": [
        {
            "name": "Unvalidated URL Request",
            "pattern": r'URLRequest\s*\(\s*\w+\s*\)',
            "severity": "MEDIUM",
            "description": "URL request with unvalidated parameter"
        }
    ]
}

# Function name patterns for auto-detection
FUNCTION_NAME_PATTERNS = {
    # Authentication
    r'(?:login|signin|auth|authenticate)': 'authenticateUser',
    r'(?:logout|signout)': 'logoutUser',
    r'(?:register|signup)': 'registerUser',
    r'(?:password.*reset|reset.*password)': 'resetPassword',
    r'(?:verify|validate).*(?:email|code)': 'verifyEmail',

    # Connection/Network
    r'(?:connect|connection)': 'connect',
    r'(?:disconnect)': 'disconnect',
    r'(?:send.*packet|packet.*send)': 'sendPacket',
    r'(?:receive.*packet|packet.*receive)': 'receivePacket',
    r'(?:socket|websocket)': 'handleSocket',

    # Crypto
    r'(?:encrypt|cipher)': 'encrypt',
    r'(?:decrypt)': 'decrypt',
    r'(?:hash)': 'hashData',
    r'(?:key.*exchange|exchange.*key)': 'exchangeKeys',

    # Data
    r'(?:load|fetch|get).*(?:data|info)': 'loadData',
    r'(?:save|store|set).*(?:data|info)': 'saveData',
    r'(?:parse|decode)': 'parseData',
    r'(?:serialize|encode)': 'serializeData',

    # UI
    r'(?:show|display|open)': 'show',
    r'(?:hide|close)': 'hide',
    r'(?:update.*ui|ui.*update)': 'updateUI',
    r'(?:render|draw)': 'render',
    r'(?:click|pressed)': 'onClick',

    # Game Logic
    r'(?:move|position)': 'move',
    r'(?:attack|hit)': 'attack',
    r'(?:damage)': 'applyDamage',
    r'(?:spawn|create).*(?:object|entity)': 'spawnObject',

    # Common patterns
    r'(?:init|initialize)': 'initialize',
    r'(?:setup|configure)': 'setup',
    r'(?:start|begin)': 'start',
    r'(?:stop|end)': 'stop',
    r'(?:update)': 'update',
    r'(?:destroy|remove|delete)': 'destroy',
    r'(?:validate|check)': 'validate',
    r'(?:handle|process).*(?:event)': 'handleEvent',
}

class DeepDeobfuscator:
    def __init__(self, src_dir: Path, output_dir: Path):
        self.src_dir = src_dir
        self.output_dir = output_dir
        self.vulnerabilities = []
        self.function_mappings = {}
        self.variable_mappings = {}

    def analyze_file(self, filepath: Path) -> Dict:
        """Deep analysis of a single file"""
        try:
            with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()

            # Extract functions
            functions = self.extract_functions(content)

            # Extract variables
            variables = self.extract_variables(content)

            # Find vulnerabilities
            vulns = self.find_vulnerabilities(content, filepath)

            # Suggest function renames
            function_renames = self.suggest_function_names(functions, content)

            # Suggest variable renames
            variable_renames = self.suggest_variable_names(variables, content)

            return {
                "filepath": str(filepath),
                "functions": functions,
                "variables": variables,
                "vulnerabilities": vulns,
                "function_renames": function_renames,
                "variable_renames": variable_renames,
                "lines": len(content.split('\n'))
            }
        except Exception as e:
            print(f"Error analyzing {filepath}: {e}")
            return None

    def extract_functions(self, content: str) -> List[Dict]:
        """Extract all functions from content"""
        functions = []

        # Match: public/private/protected function name(params)
        pattern = r'(public|private|protected|internal)?\s+(?:static\s+)?function\s+(\w+)\s*\(([^)]*)\)\s*:\s*(\w+)?'

        for match in re.finditer(pattern, content):
            visibility = match.group(1) or 'public'
            name = match.group(2)
            params = match.group(3)
            return_type = match.group(4) or 'void'

            # Check if obfuscated (starts with _ and has numbers)
            is_obfuscated = name.startswith('_') and any(c.isdigit() for c in name)

            functions.append({
                "name": name,
                "visibility": visibility,
                "params": params,
                "return_type": return_type,
                "is_obfuscated": is_obfuscated
            })

        return functions

    def extract_variables(self, content: str) -> List[Dict]:
        """Extract all variables from content"""
        variables = []

        # Match: public/private var/const name:Type
        pattern = r'(public|private|protected|internal)?\s+(?:static\s+)?(var|const)\s+(\w+)\s*:\s*(\w+)?'

        for match in re.finditer(pattern, content):
            visibility = match.group(1) or 'public'
            var_type = match.group(2)
            name = match.group(3)
            data_type = match.group(4) or 'Object'

            is_obfuscated = name.startswith('_') and any(c.isdigit() for c in name)

            variables.append({
                "name": name,
                "visibility": visibility,
                "var_type": var_type,
                "data_type": data_type,
                "is_obfuscated": is_obfuscated
            })

        return variables

    def suggest_function_names(self, functions: List[Dict], content: str) -> Dict[str, str]:
        """Suggest better names for obfuscated functions"""
        suggestions = {}

        for func in functions:
            if not func["is_obfuscated"]:
                continue

            func_name = func["name"]

            # Try to find the function body
            func_pattern = rf'function\s+{re.escape(func_name)}\s*\([^)]*\)[^{{]*\{{([^}}]{{0,500}})'
            func_match = re.search(func_pattern, content, re.DOTALL)

            if not func_match:
                continue

            func_body = func_match.group(1).lower()

            # Analyze function body for patterns
            suggested_name = None

            for pattern, suggestion in FUNCTION_NAME_PATTERNS.items():
                if re.search(pattern, func_body):
                    suggested_name = suggestion
                    break

            # Check for specific keywords
            if not suggested_name:
                if 'socket' in func_body and 'connect' in func_body:
                    suggested_name = 'connectSocket'
                elif 'encrypt' in func_body or 'cipher' in func_body:
                    suggested_name = 'encryptData'
                elif 'decrypt' in func_body:
                    suggested_name = 'decryptData'
                elif 'login' in func_body:
                    suggested_name = 'handleLogin'
                elif 'packet' in func_body and 'send' in func_body:
                    suggested_name = 'sendPacket'
                elif 'load' in func_body:
                    suggested_name = 'loadResource'
                elif 'init' in func_body:
                    suggested_name = 'initialize'

            # Analyze return type
            if not suggested_name:
                if func["return_type"] == "Boolean":
                    if "check" in func_body or "valid" in func_body:
                        suggested_name = "isValid"
                    elif "has" in func_body:
                        suggested_name = "hasPermission"
                elif func["return_type"] == "String":
                    suggested_name = "getString"
                elif func["return_type"] == "Array":
                    suggested_name = "getList"

            if suggested_name:
                # Ensure uniqueness
                base_name = suggested_name
                counter = 1
                while suggested_name in suggestions.values():
                    suggested_name = f"{base_name}{counter}"
                    counter += 1

                suggestions[func_name] = suggested_name

        return suggestions

    def suggest_variable_names(self, variables: List[Dict], content: str) -> Dict[str, str]:
        """Suggest better names for obfuscated variables"""
        suggestions = {}

        for var in variables:
            if not var["is_obfuscated"]:
                continue

            var_name = var["name"]

            # Suggest based on type
            suggested_name = None

            if var["data_type"] == "Socket":
                suggested_name = "socket"
            elif var["data_type"] == "String":
                if "url" in content.lower():
                    suggested_name = "urlString"
                else:
                    suggested_name = "textString"
            elif var["data_type"] == "Boolean":
                suggested_name = "isEnabled"
            elif var["data_type"] == "int" or var["data_type"] == "Number":
                suggested_name = "count"
            elif var["data_type"] == "Array":
                suggested_name = "items"

            if suggested_name:
                base_name = suggested_name
                counter = 1
                while suggested_name in suggestions.values():
                    suggested_name = f"{base_name}{counter}"
                    counter += 1

                suggestions[var_name] = suggested_name

        return suggestions

    def find_vulnerabilities(self, content: str, filepath: Path) -> List[Dict]:
        """Scan for OWASP Top 10 vulnerabilities"""
        vulns = []

        for category, patterns in VULNERABILITY_PATTERNS.items():
            for pattern_def in patterns:
                matches = list(re.finditer(pattern_def["pattern"], content, re.MULTILINE | re.DOTALL))

                for match in matches:
                    line_num = content[:match.start()].count('\n') + 1

                    # Extract context (5 lines around)
                    lines = content.split('\n')
                    start_line = max(0, line_num - 3)
                    end_line = min(len(lines), line_num + 2)
                    context = '\n'.join(lines[start_line:end_line])

                    vulns.append({
                        "category": category,
                        "name": pattern_def["name"],
                        "severity": pattern_def["severity"],
                        "description": pattern_def["description"],
                        "file": str(filepath.relative_to(self.src_dir)),
                        "line": line_num,
                        "match": match.group(0)[:100],  # First 100 chars
                        "context": context
                    })

        return vulns

    def process_all_files(self) -> Dict:
        """Process all ActionScript files"""
        results = {
            "files_analyzed": 0,
            "total_functions": 0,
            "obfuscated_functions": 0,
            "total_variables": 0,
            "obfuscated_variables": 0,
            "vulnerabilities": [],
            "function_mappings": {},
            "variable_mappings": {},
            "file_details": []
        }

        as_files = list(self.src_dir.rglob("*.as"))
        total = len(as_files)

        print(f"Analyzing {total} files for vulnerabilities and obfuscation...")

        for idx, filepath in enumerate(as_files, 1):
            if idx % 50 == 0:
                print(f"  [{idx}/{total}] Processed...")

            analysis = self.analyze_file(filepath)
            if not analysis:
                continue

            results["files_analyzed"] += 1
            results["total_functions"] += len(analysis["functions"])
            results["obfuscated_functions"] += sum(1 for f in analysis["functions"] if f["is_obfuscated"])
            results["total_variables"] += len(analysis["variables"])
            results["obfuscated_variables"] += sum(1 for v in analysis["variables"] if v["is_obfuscated"])

            results["vulnerabilities"].extend(analysis["vulnerabilities"])
            results["function_mappings"].update(analysis["function_renames"])
            results["variable_mappings"].update(analysis["variable_renames"])

            if analysis["vulnerabilities"] or analysis["function_renames"] or analysis["variable_renames"]:
                results["file_details"].append({
                    "file": str(filepath.relative_to(self.src_dir)),
                    "functions": len(analysis["functions"]),
                    "obfuscated_functions": sum(1 for f in analysis["functions"] if f["is_obfuscated"]),
                    "variables": len(analysis["variables"]),
                    "obfuscated_variables": sum(1 for v in analysis["variables"] if v["is_obfuscated"]),
                    "vulnerabilities": len(analysis["vulnerabilities"]),
                    "lines": analysis["lines"]
                })

        return results

def main():
    src_dir = Path("/Users/pedropablomunozpenafiel/Documents/BoombangServer/KernelDeobfuscated/src")
    output_dir = Path("/Users/pedropablomunozpenafiel/Documents/BoombangServer/KernelDeobfuscated")

    print("=" * 70)
    print("BoomBang Kernel - Deep Deobfuscation & Security Analysis")
    print("=" * 70)
    print()

    deobfuscator = DeepDeobfuscator(src_dir, output_dir)
    results = deobfuscator.process_all_files()

    # Save detailed results
    results_file = output_dir / "deep_analysis_results.json"
    with open(results_file, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2, ensure_ascii=False)

    print(f"\n✓ Analysis complete!")
    print(f"  Results saved to: {results_file}")
    print()
    print("=" * 70)
    print("SUMMARY")
    print("=" * 70)
    print(f"  Files analyzed: {results['files_analyzed']}")
    print(f"  Total functions: {results['total_functions']}")
    print(f"  Obfuscated functions: {results['obfuscated_functions']}")
    print(f"  Total variables: {results['total_variables']}")
    print(f"  Obfuscated variables: {results['obfuscated_variables']}")
    print(f"  Vulnerabilities found: {len(results['vulnerabilities'])}")
    print()

    # Vulnerability breakdown
    if results['vulnerabilities']:
        print("VULNERABILITY BREAKDOWN BY SEVERITY:")
        severity_count = defaultdict(int)
        for v in results['vulnerabilities']:
            severity_count[v['severity']] += 1

        for severity in ['CRITICAL', 'HIGH', 'MEDIUM', 'LOW']:
            if severity in severity_count:
                print(f"  {severity}: {severity_count[severity]}")
        print()

        print("TOP 10 VULNERABILITIES:")
        vuln_types = defaultdict(int)
        for v in results['vulnerabilities']:
            vuln_types[v['name']] += 1

        for idx, (name, count) in enumerate(sorted(vuln_types.items(), key=lambda x: x[1], reverse=True)[:10], 1):
            print(f"  {idx}. {name}: {count} occurrences")

    print("=" * 70)

if __name__ == "__main__":
    main()
