# Threat Intelligence & Phishing Room – Raw Notes

## Threat Intelligence Basics
- CTI = Cyber Threat Intelligence
- Purpose: provide context → who, what, behavior, response
- 4 classifications:
  - Strategic = high-level trends
  - Tactical = adversary TTPs
  - Operational = motives, campaigns
  - Technical = IOCs (IPs, hashes, emails)

## Tools Used
- UrlScan.io → scans domains/URLs, shows registrar, Umbrella rank, IPs, links
- Abuse.ch Projects:
  - ThreatFox → IOC lookup (IPs, ports, malware aliases)
  - FeodoTracker → botnet C2 IPs (Emotet, Dridex, TrickBot, QakBot, BazarLoader)
  - URLHaus → malware hosting URLs (ASN, domains, TLDs)
  - MalwareBazaar → upload/search malware samples
  - SSL Blacklist → malicious SSL certs + JA3 fingerprints
- PhishTool → analyze phishing emails (headers, hops, SPF/DKIM/DMARC)
- Cisco Talos Intelligence → reputation lookups, domain ownership, customer names
- VirusTotal → check file hashes, confirm malware families, detection aliases

## Evidence
- Email1.eml → attacker posed as **social media platform**  
  - Sender: vipivillain@badbank.com  
  - Recipients: John Doe, Admin  
  - Originating IP: 91.185.23.222 (defanged)  
  - Hop count = identified via headers  
- Email2.eml → attachment `flbpfuh.exe`  
  - VirusTotal alias: HIDDENEXT/Worm.Gen (starts with H)  
- Email3.eml → attachment `Sales_Receipt 5606.xls`  
  - Malware family: Dridex  
  - SHA-256 hash: f4d97603256a36e81bfe7ef5e0ccaee44f77de6bb041fa41f0b3a0db53f4aba9  

## IOC Findings
- Attacker IP: 91.185.23.222
- Attacker Email: vipivillain@badbank.com
- Victim Accounts: John Doe, Admin
- Malicious File: flbpfuh.exe
- Detection Alias: HIDDENEXT/Worm.Gen
- Email3 Attachment: Sales_Receipt 5606.xls
- Malware Family: Dridex
- Final Flag: THM{NOW_I_CAN_CTI}

## Abuse.ch Queries
- IOC 212.192.246.30:5555 → Malware alias: Katana (Mirai botnet C2)
- JA3 fingerprint 51c64c77e60f3980eea90869b68c58a8 → Associated with TrickBot
- URLHaus ASN AS14061 → DigitalOcean malware hosting network
- FeodoTracker IP 178.134.47.166 → Country: Georgia

## MITRE Mapping
- Initial Access → T1566 (Phishing)  
- Execution → T1204 (User Execution)  
- Credential Access → linked to Dridex family  
- Command & Control → T1071 (Application Layer C2)  

## Key Lessons
- Always hash attachments → safer than uploading raw samples
- Defang IPs/domains before reporting
- Cross-check AV results to confirm malware family (don’t just trust “Trojan.Generic”)
- Abuse.ch + Talos + VirusTotal = powerful combo for enrichment
- Document IOCs in clean format for escalation

