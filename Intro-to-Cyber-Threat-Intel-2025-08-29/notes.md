# Practical CTI Investigation – SOC L1 Exercise

## Scenario
As a SOC L1 analyst, I worked through a simulated intrusion scenario using a SIEM dashboard. My task was to identify attacker activity, trace malicious artifacts, and extract key intelligence from the logs.

## Objectives
- Identify the attacker’s email used in the phishing attempt.
- Determine which malicious file was downloaded.
- Confirm the attacker’s IP address.
- Pinpoint which victim accounts were compromised.
- Collect the final flag (simulating incident confirmation).

## Investigation Walkthrough
1. **Attacker Email**
   - From the phishing logs, I identified the malicious sender:
   - **vipivillain@badbank.com**

2. **Malicious File Downloaded**
   - The SIEM alerts flagged an unusual executable pulled from external infrastructure:
   - **flbpfuh.exe**

3. **Attacker Infrastructure**
   - The IP observed in multiple alerts was tied to the adversary:
   - **91.185.23.222**

4. **Victim Accounts**
   - Analysis of login attempts and mailbox activity revealed two targeted accounts:
     - **John Doe**
     - **Admin**

5. **Flag (Confirmation of Investigation)**
   - Successfully tracing the chain of events led to the final flag:
   - **THM{NOW_I_CAN_CTI}**

## Key Takeaways
- Even in a noisy SIEM dashboard, focusing on **IOCs** (email, IP, hash/file) quickly connects the dots.
- Enriching raw observables turned them into usable intelligence for triage and escalation.
- Identifying both the attacker’s infrastructure and the impacted accounts is critical for containment and response.


# Cyber Threat Intelligence – SOC L1 Notes

## CTI Basics
- CTI = Cyber Threat Intelligence
- Purpose: give SOC context for alerts → who, what, behavior, response
- Answers 3 key questions:
  1. Who/what is behind this indicator?
  2. What did they do before?
  3. What should I do right now?

## Data → Info → Intelligence
- Data: raw observable → e.g., 45.155.205.3
- Info: annotated → IP registered to Hetzner
- Intelligence: context/so-what → IP is BumbleBee C2 → block

## Key Terms
- IOC = Indicator of Compromise → evidence of breach
- IOA = Indicator of Attack → malicious action in progress
- TTPs = tactics, techniques, procedures → attacker methods (ATT&CK IDs)

## Indicator Types + Resources
- IP: WHOIS, VirusTotal, Shodan
- Domain: SecurityTrails, urlscan
- URL: URLhaus, Any.Run
- Hash: VirusTotal, Hybrid Analysis
- Email: MXToolbox, HIBP
- Local Artefact: Registry keys, Sigma rules

## Enrichment Tip
- Keep bookmarks or SIEM launchers for common lookups → saves time

## Feeds vs Platforms
- Feed = stream of IOCs (CSV, JSON, STIX, TAXII)
- Platform = structured repo (MISP, OpenCTI)

## Sources of CTI
- Internal telemetry (SIEM, EDR, phishing mailbox)
- Commercial feeds (paid intel)
- OSINT (AbuseIPDB, URLhaus)
- Communities / ISACs (sector sharing)

## CTI Classifications
- Strategic = big-picture threat trends
- Tactical = adversary TTPs
- Operational = campaign-specific intent
- Technical = atomic IOCs (IPs, hashes)

👉 IPs and hashes = **Technical intel**

## CTI Lifecycle
1. **Direction** = define mission/questions
2. **Collection** = gather from sources
3. **Processing** = normalise, sort, correlate
4. **Analysis** = validate, score relevance
5. **Dissemination** = share with right consumers
6. **Feedback** = measure/refine

👉 Processing = when raw data is converted to usable formats  
👉 Direction = when questions are defined

## TLP (Traffic Light Protocol)
- Clear: share openly
- Green: share with community
- Amber: org only
- Red: named individuals only

## Standards & Frameworks
- MITRE ATT&CK = adversary behavior catalog (IDs for TTPs)
- MITRE D3FEND = defensive technique catalog
- Cyber Kill Chain = 7 attack phases (Recon, Weaponisation, Delivery, Exploitation, Installation, C2, Actions on Objectives)
- CVE/CVSS/NVD = vulnerabilities
- STIX = intel format (JSON schema)
- TAXII = intel sharing protocol (supports Collection + Channel)

## Kill Chain Quiz Ref
- Adversary extracting data = Actions on Objectives
- Sharing models supported by TAXII = Collection + Channel

---

## Q&A (from lab)
- What does CTI stand for? → Cyber Threat Intelligence
- IP addresses, Hashes, other artefacts fall under? → Technical intel
- Phase converting data to usable formats? → Processing
- Phase to define investigation questions? → Direction
- TAXII sharing models? → Collection, Channel
- Adversary extracting data = Kill Chain → Actions on Objectives
