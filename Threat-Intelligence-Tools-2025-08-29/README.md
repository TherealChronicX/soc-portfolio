Overview

    Case: Threat Intelligence & Phishing Room
    Date: 2025-08-29
    Objective: Learn how to apply threat intelligence tools and frameworks to triage phishing emails and extract IOCs.

Core Concepts

    Threat Intelligence: Process of turning raw artefacts (IPs, hashes, emails) into contextual intelligence.
    Classifications: Strategic, Tactical, Operational, Technical intel used for different levels of decision-making.
    Email Analysis: Extracting sender, recipient, originating IP, hop count, and attachments from suspicious emails.
    Tools: UrlScan.io, Abuse.ch projects (ThreatFox, FeodoTracker, URLHaus, MalwareBazaar, SSL Blacklist), PhishTool, Cisco Talos Intelligence, VirusTotal.

Evidence & Queries

    Extracted attachment name from Email3.eml (Sales_Receipt 5606.xls).
    Generated SHA-256 hash of attachment and verified malware family (Dridex).
    Queried VirusTotal to confirm detection alias starting with "H" (HIDDENEXT/Worm.Gen).
    Identified attacker IP (91.185.23.222) and email address (vipivillain@badbank.com).
    Confirmed victim accounts (John Doe, Admin).
    Defanged originating IPs and documented SMTP hop counts.

Findings / IOCs

    Attachment: Sales_Receipt 5606.xls → Malware Family: Dridex.
    Malicious file: flbpfuh.exe (linked via SIEM alerts).
    Detection Alias: HIDDENEXT/Worm.Gen (Avira).
    Attacker IP: 91.185.23.222.
    Attacker Email: vipivillain@badbank.com.
    Victims: John Doe, Admin.

MITRE ATT&CK

    Mapped phishing and execution to Initial Access (T1566.001) and User Execution (T1204).
    Malware activity aligns with Credential Access and Collection tactics.
    Infrastructure and C2 mapped to Command & Control (T1071).

Lessons Learned

    Practiced enriching raw email artefacts into contextual intelligence using OSINT tools.
    Learned how multiple platforms (UrlScan, Abuse.ch, Talos, VirusTotal) work together for threat analysis.
    Saw the value of cross-checking malware family names across AV detections.
    Understood how phishing investigations tie directly into MITRE ATT&CK and SOC reporting.
    Clear documentation of IOCs helps streamline incident escalation and containment.

