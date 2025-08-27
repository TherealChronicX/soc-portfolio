# Raw Notes — MITRE Framework

## ATT&CK (Adversarial Tactics, Techniques & Common Knowledge)
- ATT&CK Matrix → https://attack.mitre.org
- Technique: **T1566 (Phishing)**
  - Sub-techniques: spearphishing attachment, spearphishing link, service, etc.
  - Mitigation: **User Training (M1017)** → identifying social engineering
  - Detection Data Sources: `mail server,network traffic content,network traffic flow`
- Groups:
  - First spearphishing: **APT1, APT12**
  - Associated groups (APT1): Comment Crew, Comment Group, Byzantine Hades
  - Software: **WEBC2 (S0109)** → family of web shells used by APT1
  - Overlaps slightly with **APT16**

---

## CAR (Cyber Analytics Repository)
- Example: **CAR-2014-11-004 Remote PowerShell Sessions**
  - Tactic: **Persistence (TA0003)**
  - Implements detection via pseudocode + EQL
  - Extra Info: Coverage / telemetry requirement

- Other useful IDs:
  - CAR-2020-09-001 → Scheduled Task File Access
  - Libraries: **RITA** (Real Intelligence Threat Analytics) = collection of Zeek scripts
  - Technique: **Masquerading (T1036.005)** → executables same hash/different names

---

## ENGAGE (Adversary Engagement)
- Engage Matrix → https://engage.mitre.org
- **SAC0002:** Threat Model
  - Resource: Threat Modeling Starter Kit
- Engagement activities:
  - **Expose** → reveal adversary activity
  - **Affect** → cause disruption
  - **Elicit** → bait specific responses

---

## D3FEND
- MITRE D3FEND: https://d3fend.mitre.org
- First ATT&CK Lookup in dropdown: **T1001 Data Obfuscation**
- Inferred relationship: Produces → **Obfuscated files/information**
- Still in beta (~408 artifacts at time of writing)

---

## Adversary Emulation Plans (AEP)
- APT3 Emulation Plan
  - Phase 1: Spearphishing Attachment
  - Persistence: Replaced **sethc.exe with cmd.exe**
- APT29
  - Scenario 1 C2: **Cobalt Strike, Meterpreter**
  - Scenario 2 C2: **PupyRAT**
- Sandworm
  - Webshell: **China Chopper (S0020)**

---

## Threat Intelligence Scenario (Aviation + Cloud)
- Group: **APT41 (a.k.a. Barium, Winnti, Wicked Panda)**
- Operation since: ~2013
- Techniques: **Credential Access in Cloud Services**
- Tool: **Mimikatz**
- Mitigation: Multi-factor authentication (MFA) with SMS
- Platforms: **Windows, SaaS, IaaS**

---

## Quick Reminders
- **APT = Advanced Persistent Threat**
- **TTP = Tactic (goal), Technique (how), Procedure (implementation)**
- Red + Blue + Purple teams all use ATT&CK Matrix
- ATT&CK Navigator = visualization tool for mapping group TTPs

