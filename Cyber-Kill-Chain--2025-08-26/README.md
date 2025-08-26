# SOC Case Report – Cyber Kill Chain Room

## Overview
- Case: Cyber Kill Chain Practical  
- Date: 2025-08-26  
- Objective: Understand and apply the Cyber Kill Chain framework by mapping attacker actions to the correct phases.

## Evidence & Queries
- Practical Analysis Screenshot: ![Practice Analysis](evidence/practice-analysis.png)

## Findings / IOCs
- Delivery via spearphishing attachment  
- Exploitation through a public-facing application vulnerability  
- Installation achieved via dynamic linker hijacking  
- Command & Control using fallback channels  
- Actions on Objectives: data collection from local systems  

## MITRE ATT&CK
- T1566.001 – Spearphishing Attachment  
- T1190 – Exploit Public-Facing Application  
- T1574.001 – Dynamic Linker Hijacking  
- T1071 – Application Layer Protocol (C2)  
- T1005 – Data from Local System  

## Lessons Learned
- Each step of the kill chain represents a chance for defenders to detect and disrupt the attack.  
- Blocking early stages (Delivery, Exploitation) can stop the chain before real damage occurs.  
- Mapping techniques to MITRE ATT&CK improves reporting quality and investigation repeatability.  
- **Flag confirmed: THM{7HR347_1N73L_12_4w35om3}**

