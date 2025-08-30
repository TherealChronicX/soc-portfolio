# YARA Room Notes

## Overview
This room introduced YARA — "the pattern matching swiss knife for malware researchers" — and showed how it can detect malware based on strings, hex, and binary patterns.  
I practiced writing rules, generating signatures with yarGen, scanning with Loki, and enriching detections with Valhalla and VirusTotal.

---

## YARA Basics
- Detects strings, hex, and binary patterns in files.  
- Rules have 3 parts:
  - meta → descriptive info  
  - strings → text or hex patterns  
  - condition → logic for matches  
- Can detect both text (`"Enter your Name"`) and hexadecimal (base-16).  

---

## File 1 – ind3x.php
- Loki Detection: Suspicious  
- YARA Rule: `webshell_metaslsoft`  
- Classification: Webshell – b374k 2.2  
- Matched String: `$buff .= "<tr><td><a href=..."`  
- SHA256: `5479f8cd1375364770df36e5a18262480a8f9d311e8eedb2c2390ecb233852ad`  
- Valhalla Result: Attributed to an APT group → Yay  

---

## File 2 – 1ndex.php
- Loki Detection: Initially clean  
- Manual Inspection: Webshell – b374k 3.2.3  
- yarGen Rule: Generated with 20 strings  
- Matched Variable: `$x1` (string contained Zepto JS)  
- Filesize Condition: `< 300KB`  
- SHA256: `53fe44b4753874f079a936325d1fdc9b1691956a29c3aaf8643cdbd49f5984bf`  
- Valhalla Rule: `Webshell_b374k_rule1` → APT-attributed (Yay)  
- VirusTotal: YARA signature match from THOR APT Scanner  
- AV Detection: Not all AV flagged it → Nay  
- File Extensions: `.php`, `.exe`  
- JavaScript Library Used: Zepto  

---

## Tools Learned
- YARA → custom malware detection rules.  
- Loki → IOC & YARA scanner (loads custom rules).  
- yarGen → automated YARA rule generation.  
- Valhalla → online YARA feed for intel & attribution.  
- VirusTotal → validates detection across AV engines.  

---

## Key Takeaways
- YARA rules can detect threats that AV may miss.  
- Loki’s default rules missed file2 → custom yarGen rule solved it.  
- Valhalla and VirusTotal help with threat intelligence and attribution.  
- Learned how to write, generate, and deploy YARA rules in a detection workflow.  

