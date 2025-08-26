# # SOC Case Report – Pyramid of Pain

## Overview
- Case: Pyramid of Pain (Threat Hunting Indicators)
- Date: 2025-08-25
- Objective: Identify indicators at each pyramid level (IP, Domain, Host & Network artifacts, Tools, TTPs) and answer room questions with evidence.

## Evidence & Queries
- PID 1632 IP & Domain: `50.87.136.52:443` → `craftingalegacy.com`  
  ![PID 1632 IP Domain](evidence/anyrun-pid1632-ip-domain.png)

- Suspicious Domain (Q1): First suspicious domain request observed.  
  ![Suspicious Domain](evidence/anyrun-suspicious-domain-q1.png)

- Dropped Executable (Q2): `regidle.exe`  
  ![Dropped EXE](evidence/host-artifacts-dropped-exe-q2.png)

- Vendor Detection (Q3): Multiple AV vendors flagged file as *malware/malicious*  
  ![VT Vendors](evidence/virustotal-vendor-detection-q3.png)

- Malicious Vendors Count (Q4): 11 vendors confirmed malicious  
  ![VT Malicious Vendors](evidence/virustotal-malicious-vendors-q4.png)

- Practical Check: Pyramid of Pain categorization exercise completed  
  ![Pyramid Practical](evidence/practical-the-pyramid-of-pain.png)

## Findings / IOCs
- Suspicious IP: `50.87.136.52`
- Suspicious Domain: `craftingalegacy.com`
- Dropped Binary: `regidle.exe`
- Confirmed Malicious: Detected by 11 vendors on VirusTotal 

## MITRE ATT&CK
- Execution (T1059) – Malicious binary execution (`regidle.exe`)  
- Command & Control (T1071) – C2 communications over port 8080  
- Persistence (T1547) – Dropped executable artifacts  

## Lessons Learned
- Blocking single IoCs like IP addresses is weak (adversaries can change them easily).  
- Domains and host artifacts force adversaries to spend more time/resources.  
- At the top of the Pyramid (Tools, TTPs), attackers are most disrupted since they must rebuild infrastructure or change tactics.  
- Reports from Any.run and VirusTotal are critical for SOC analysts to validate IoCs quickly.  
