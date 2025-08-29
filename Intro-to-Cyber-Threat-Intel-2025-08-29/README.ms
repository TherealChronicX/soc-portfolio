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


