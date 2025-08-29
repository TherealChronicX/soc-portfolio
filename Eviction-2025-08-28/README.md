APT28 MITRE ATT&CK Lab Report

Analyst: Sunny (SOC Analyst, E-corp)
Threat Actor: APT28 (Fancy Bear)
Objective: Prevent exfiltration of intellectual property from E-corp by mapping APT28 TTPs with MITRE ATT&CK Navigator and validating detections.

Q&A Walkthrough
Q1. What is a technique used by the APT to both perform recon and gain initial access?

MITRE Technique: Spearphishing Link (T1566.002)

Answer: Spearphishing Link

Q2. Which accounts might the APT compromise while developing resources?

MITRE Technique: Compromise Accounts – Email Accounts (T1586.002)

Answer: Email Accounts

Q3. What two techniques of user execution should Sunny look out for?

MITRE Technique: User Execution (T1204)

Malicious File (T1204.002)

Malicious Link (T1204.001)

Answer: Malicious File and Malicious Link

Q4. Which scripting interpreters should Sunny search for to identify successful execution?

MITRE Technique: Command & Scripting Interpreter (T1059)

PowerShell (T1059.001)

Windows Command Shell (T1059.003)

Answer: PowerShell and Windows Command Shell

Q5. Which registry keys should Sunny observe to track these changes (persistence)?

MITRE Technique: Boot or Logon Autostart Execution – Registry Run Keys (T1547.001)

Answer:

HKCU\Software\Microsoft\Windows\CurrentVersion\Run

HKLM\Software\Microsoft\Windows\CurrentVersion\Run

Q6. Which system binary's execution should Sunny scrutinize for proxy execution?

MITRE Technique: System Binary Proxy Execution – Rundll32 (T1218.011)

Answer: rundll32.exe

Q7. Sunny identified tcpdump on one of the compromised hosts. Which technique might the APT be using here?

MITRE Technique: Network Sniffing (T1040)

Answer: Network Sniffing

Q8. Which remote services should Sunny observe to identify APT activity traces?

MITRE Technique: Exploitation of Remote Services (T1210)

Answer: SMB/Windows Admin Shares and Remote Desktop Protocol (RDP)

Q9. Which information repository can be the likely target of the APT?

MITRE Technique: Data from Information Repositories – SharePoint (T1213.002)

Answer: SharePoint

Q10. What types of proxy might the APT use for C2/data exfiltration?

MITRE Technique: Proxy (T1090)

External Proxy (T1090.002)

Multi-hop Proxy (T1090.003)

Answer: External Proxy and Multi-hop Proxy
