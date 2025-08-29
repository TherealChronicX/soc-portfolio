# Summit – Threat Simulation & Detection Engineering

## Objective
In this lab, we played the role of a defender at PicoSecure, working with a penetration tester (Sphinx) to detect and block evolving malware samples. The engagement followed the **Pyramid of Pain**, moving from indicators like file hashes to attacker TTPs.

Our goal was to increase the attacker’s operational cost until they gave up entirely.

---

## Steps & Findings

### Sample 1 – Hash Detection
- Used **hash blocklist** to block `sample1.exe` by SHA256.
- Screenshot: `sample-1-scan.png`, `hash-scan-and-block.png`  
- Flag: `THM{f3cbf08151a11a6a331db9c6cf5f4fe4}`

---

### Sample 2 – Firewall Rule (IP Blocking)
- Hash detection failed due to recompiled malware.  
- Analyzed network activity → identified malicious IP `154.35.10.113`.  
- Added **egress firewall rule** to deny traffic.  
- Screenshot: `sample-2-scan.png`, `blocking-ip.png`  
- Flag: `THM{2ff48a3421a938b388418be273f4806d}`

---

### Sample 3 – DNS Rule
- Malware connected to `emudyn.bresonicz.info`.  
- Created DNS rule to deny domain resolution.  
- Screenshot: `sample-3-scan.png`, `blocked-domain.png`  
- Flag: `THM{4eca9e2f61a19ecd5df34c788e7dce16}`

---

### Sample 4 – Registry Modification
- Malware disabled **Windows Defender Real-Time Protection**.  
- Built a **Sigma rule** to detect registry modifications (`DisableRealtimeMonitoring=1`).  
- Screenshot: `sample-4-scan.png`, `created-sigma-rule.png`  
- Flag: `THM{c956f455fc076aea829799c0876ee399}`

---

### Sample 5 – Beaconing Pattern
- Malware beaconed every **1800s (30 minutes)** with a size of 97 bytes.  
- Created **Sigma rule for suspicious network connections**.  
- Screenshot: `sigma-rule-created-sample-5.png`, `Smaple-5.png`  
- Flag: `THM{46b21c4410e47dc5729ceadef0fc722e}`

---

### Sample 6 – File Creation / Exfil
- Malware dropped `exfiltr8.log` into `%temp%`.  
- Built **Sigma rule** to detect suspicious file creation.  
- Screenshot: (logs included in evidence)  
- Flag: `THM{c8951b2ad24bbcbac60c16cf2c83d92c}`

---

## Final Flag
- After climbing to the very top of the **Pyramid of Pain**, Sphinx gave up.  
- Final Flag: `THM{c8951b2ad24bbcbac60c16cf2c83d92c}`

---

## Evidence Folder
All screenshots and logs are stored in `/evidence`:
- `portal-start.png`
- `sample-1-scan.png`
- `hash-scan-and-block.png`
- `Ip-log.png`
- `sample-2-scan.png`
- `sample-3-scan.png`
- `sample-4-scan.png`
- `sigma-rule-created-sample-5.png`
- `Smaple-5.png`
- `flag-for-question-1.png`
- `flag-for-sample-2.png`
- `flag-for-sample-3.png`
- `flag-for-sample-4.png`
- `flag-for-sample-5.png`
- `flag-for-sample-6.png`
- `blocked-domain.png`
- `blocking-ip.png`
- `created-sigma-rule.png`

---

## Conclusion
This exercise demonstrated:
- The limitations of relying on simple indicators like hashes.  
- How defenders can escalate detection across **IPs, domains, registry changes, and TTPs**.  
- Ultimately, forcing the adversary to give up due to rising operational costs.

---

