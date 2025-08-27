# SOC Case Report – Unified Kill Chain

## Overview
- **Case:** Unified Kill Chain  
- **Date:** 2025-08-26  
- **Objective:** Understand the UKC framework, attacker methodologies, and how each phase of an attack maps to real-world tactics.

## Evidence & Queries
- No screenshots collected — this case focused on conceptual learning and applying knowledge to identify attack phases.  
- Practical: Given real-world examples, mapped each to the correct UKC phase.  

## Findings / IOCs
- The term **Kill Chain** originates from the **military**.  
- UKC expands the Cyber Kill Chain and aligns with MITRE ATT&CK tactics.  
- Key phases practiced: Reconnaissance, Weaponization, Delivery, Exploitation, Persistence, Privilege Escalation, Credential Access, Pivoting, Exfiltration, Impact.  

### Questions & Answers
**Task 2 – Origins**  
- Term "Kill Chain" originates from the **military**.  
- Fill in the blank: The **Cyber Kill Chain**.  

**Task 3 – Threat Modelling**  
- Piece of hardware/software in IT = **Asset**.  

**Task 4 – Recon to Pivoting**  
- Gain foothold via emails = **Phishing (Delivery / Social Engineering)**  
- Password reset impersonation = **Social engineering**  
- Setting up C2 infra = **Weaponization**  
- Exploiting system vulnerability = **Exploitation**  
- Moving between systems = **Pivoting / Lateral Movement**  
- Malicious service for re-entry = **Persistence**  

**Task 5 – Privilege Escalation & Discovery**  
- Failed admin logins = **Privilege Escalation**  
- Mimikatz use = **Credential Access**  

**Task 6 – Collection, Exfil, Impact**  
- Outbound traffic spike to unknown IP = **Exfiltration**  
- PII leak to public = **Confidentiality** (CIA Triad)  

## MITRE ATT&CK
- **TA0043:** Reconnaissance  
- **TA0001:** Weaponization & Social Engineering  
- **TA0002:** Exploitation  
- **TA0003:** Persistence  
- **TA0004:** Privilege Escalation  
- **TA0005:** Defence Evasion  
- **TA0006:** Credential Access  
- **TA0007:** Discovery  
- **TA0008:** Lateral Movement / Pivoting  
- **TA0009:** Collection  
- **TA0010:** Exfiltration  
- **TA0040:** Impact  

## Lessons Learned
- UKC helps SOC analysts view attacks as connected **chains of activity**, not isolated events.  
- Identifying persistence, credential access, and exfiltration points is critical to breaking the chain early.  
- Understanding attacker behavior phases allows for stronger detection rules and improved defensive posture.
