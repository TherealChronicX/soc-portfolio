Summit – Raw Notes
Objective

Purple-team style lab with PicoSecure vs Sphinx (pentester).

Goal: detect malware samples (sample1.exe → sample6.exe).

Follow Pyramid of Pain: start with hashes → end with TTPs.

Sample 1 – Hash Block

Scanned sample1.exe.

SHA256 given.

Blocked using hash blocklist.

Got flag: THM{f3cbf08151a11a6a331db9c6cf5f4fe4}.

Screenshots: sample-1-scan.png, hash-scan-and-block.png.

Sample 2 – Firewall Rule

Hash didn’t work (malware recompiled).

Found malicious IP 154.35.10.113.

Created firewall egress rule to deny.

Flag: THM{2ff48a3421a938b388418be273f4806d}.

Screenshots: sample-2-scan.png, blocking-ip.png.

Sample 3 – DNS Block

Found domain emudyn.bresonicz.info → resolves to 62.123.140.9.

Created DNS block rule.

Flag: THM{4eca9e2f61a19ecd5df34c788e7dce16}.

Screenshots: sample-3-scan.png, blocked-domain.png.

Sample 4 – Registry Modification

Malware disables Defender.

Registry: HKLM\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection

Value: DisableRealtimeMonitoring = 1.

Sigma rule built to catch this.

Flag: THM{c956f455fc076aea829799c0876ee399}.

Screenshots: sample-4-scan.png, created-sigma-rule.png.

Sample 5 – Beaconing Pattern

Observed beacon traffic (97 bytes every 1800s).

Sigma rule → network connection pattern.

ATT&CK ID: TA0011.

Flag: THM{46b21c4410e47dc5729ceadef0fc722e}.

Screenshots: sigma-rule-created-sample-5.png, Smaple-5.png.

Sample 6 – File Exfil

Dropped %temp%\exfiltr8.log.

Commands dumped system info, dirs, netstat, etc.

Sigma rule for suspicious file creation.

Flag: THM{c8951b2ad24bbcbac60c16cf2c83d92c}.

Final Flag

Forced attacker all the way up the Pyramid of Pain.

Sphinx gave up.

Final flag: THM{c8951b2ad24bbcbac60c16cf2c83d92c}.
