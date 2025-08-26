# SOC Case Report — Junior Security Analyst Intro

## Overview
- Case: Junior Security Analyst Intro (TryHackMe)
- Date: 2025-08-25
- Objective: Understand the responsibilities of a SOC Tier 1 Analyst and practice identifying malicious IP activity from monitoring logs.

## Responsibilities of a Junior Security Analyst
- Monitor and triage alerts 24/7.
- Configure and manage security tools (SIEM, IDS, EDR).
- Develop basic detection rules/signatures.
- Escalate incidents to Tier 2/3 as needed.
- Create tickets and track investigations.


## Evidence & Queries
- Investigated suspicious IP activity flagged in logs.
- Used SIEM-style logs to correlate multiple alerts to the same IP.
- Screenshots captured:
  - Alert log showing suspicious connection (`alert-log.png`)
  - Malicious IP identified (`malicious-ip.png`)
  - Scanning activity from the IP (`ip-scan-malicious.png`) 

## Findings / IOCs
- **Malicious IP Detected:** `X.X.X.X` (from exercise)
- Activity: Port scanning + suspicious traffic
- Severity: High (further investigation/escalation required)

## MITRE ATT&CK
- **TA0001: Initial Access** — attacker attempting entry through scanning.
- **TA0043: Reconnaissance** — scanning internal assets.
- **TA0002: Execution** — potential payload delivery attempts (to be monitored).

## Lessons Learned
- Always prioritize *Critical* alerts first.
- Document and screenshot everything — evidence matters.
- Context is key: one failed login might not be malicious, but a burst of them combined with scanning likely is.
- Stronger blocklists / firewall rules could mitigate similar threats.
