# Raw Notes — Unified Kill Chain

## Key Concepts
- "Kill Chain" originates from **military** strategy (steps to identify, attack, and destroy a target).  
- UKC (Unified Kill Chain) is a cybersecurity framework to understand attacker methodology and improve defenses.  
- UKC complements other frameworks like MITRE ATT&CK.  

## Threat Modelling
- Purpose: identify risks, assess vulnerabilities, plan mitigations.  
- Common frameworks: STRIDE, DREAD, CVSS.  
- Technical term for IT piece: **asset**.  

## Phases of the UKC (selected notes)
- **Reconnaissance (TA0043)** → Gathering info (services, credentials, employees, network topology).  
- **Weaponization (TA0001)** → Attacker sets up payload/C2 infrastructure.  
- **Social Engineering (TA0001)** → Manipulate employees (phishing, impersonation, fake websites).  
- **Exploitation (TA0002)** → Abuse vulnerabilities to run code.  
- **Persistence (TA0003)** → Maintain access (services, backdoors, registry run keys).  
- **Defense Evasion (TA0005)** → Avoid firewalls, IDS/IPS, AV.  
- **Command & Control (TA0011)** → Adversary ↔ target communication channel.  
- **Pivoting (TA0008)** → Moving from compromised host to internal systems.  
- **Discovery (TA0007)** → Mapping accounts, permissions, applications, configs.  
- **Privilege Escalation (TA0004)** → Elevate rights (root, admin, SYSTEM).  
- **Execution (TA0002)** → Deploy malicious code, scripts, tasks.  
- **Credential Access (TA0006)** → Tools like keyloggers, dumps, Mimikatz.  
- **Lateral Movement (TA0008)** → Spread to other systems.  
- **Collection (TA0009)** → Gather data (files, email, browser).  
- **Exfiltration (TA0010)** → Steal data via C2/tunnels.  
- **Impact (TA0040)** → Destroy/encrypt/deface systems; disrupt operations.  

## Task Answers
- Term "Kill Chain" originates from: **Military**.  
- Fill in the blank: The **Unified Kill Chain**.  
- Technical term for a piece of software/hardware: **Asset**.  
- Example foothold via emails: **Phishing / malicious attachment**.  
- Impersonating an employee for password reset: **Social Engineering**.  
- Setting up C2 infrastructure: **Weaponization**.  
- Exploiting a system vulnerability: **Exploitation**.  
- Moving from one system to another: **Pivoting**.  
- Malicious service to regain access: **Persistence**.  
- Failed logins on admin account: **Privilege Escalation attempt**.  
- Mimikatz detected → **Credential Access**.  
- Outbound spike to unknown IP → **Exfiltration**.  
- PII leaked to public → affects **Confidentiality** in CIA triad.  

## Practical
- No screenshots in this room.  
- Practical was phase classification (map scenarios to UKC phases).  
