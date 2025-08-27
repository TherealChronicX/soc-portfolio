# SOC Case Report – Diamond Model of Intrusion Analysis

## Overview
- **Case:** Diamond Model Room
- **Date:** 2025-08-26
- **Objective:** Learn and apply the Diamond Model framework to intrusion analysis.

## Core Concepts
- **Adversary:** Threat actor/operator behind the intrusion.  
- **Infrastructure:** Systems, domains, IPs, email accounts, or C2 servers used in attacks.  
- **Capability:** Skills, tools, techniques, or malware leveraged in the intrusion.  
- **Victim:** Target of the attack (person, org, or digital assets).  

## Evidence & Queries
- Differentiated between **Adversary Operator** and **Adversary Customer**.  
- Identified **Adversary Arsenal** as the full set of tools/capabilities attackers use.  
- Classified infrastructure as **Type 1 (owned)** or **Type 2 (intermediary/compromised)**.  
- Mapped meta-features: **Phase, Result, Resources**.  

## Findings / IOCs
- Clear definitions of operator vs customer roles.  
- Domains and compromised accounts typically belong to **Type 2 Infrastructure**.  
- **Meta-features** like phase, result, and resources add deeper context to events.  

## MITRE ATT&CK
- Diamond Model supports mapping to MITRE tactics (Reconnaissance, Delivery, Exploitation, C2, Actions on Objectives).  

## Lessons Learned
- Diamond Model provides a simple but powerful way to describe intrusions.  
- Helps explain incidents both technically and in business terms.  
- Useful in SOC reporting and attribution analysis.

