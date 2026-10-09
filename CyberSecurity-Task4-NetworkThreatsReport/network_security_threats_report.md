# Network Security Threats Report

**Author:** Chris Michael Ochieng
**Track:** Cybersecurity
**Task:** Oasis Infobyte Internship – Task 4
**Date:** October 2026

---

## Introduction

In today's interconnected world, network security threats pose a significant risk to organizations of all sizes. From financial institutions to healthcare providers, attackers exploit network weaknesses to steal data, disrupt services, and cause financial damage.

---

## 1. DoS / DDoS Attacks

### What They Are
A Denial-of-Service (DoS) attack overwhelms a system with traffic, making it unavailable to legitimate users. A Distributed Denial-of-Service (DDoS) attack uses many machines (a botnet) to amplify the attack.

### Real-World Example
**The 2016 Dyn Attack:** A massive DDoS attack on DNS provider Dyn took down major sites like Twitter, Netflix, and Reddit for hours. It used the Mirai botnet, exploiting unsecured IoT devices.

### Mitigation Strategies
1. **Rate limiting** — reduce the number of requests per IP per second.
2. **Content Delivery Networks (CDNs)** — Distribute traffic across many servers (Cloudflare, Akamai).
3. **Traffic filtering and scrubbing** — Detect and drop abnormal traffic before it reaches the target.

---

## 2. Man-in-the-Middle (MITM) Attacks

### What They Are
An attacker secretly intercepts and relays communication between two parties, eavesdropping on or altering the data.

### Real-World Example 
**Hotel Wi-Fi DNS Poisoning (2026):** A threat actor compromised captive-portal Wi-Fi gateways at hotels and conference centers in the US, India, and Saudi Arabia. By altering DNS settings, they redirected all users to attacker-controlled infrastructure.
This allowed them to harvest Microsoft 365 credentials from business travelers, even bypassing MFA
### Mitigation Strategies
1. **Encryption (HTTPS/TLS)** — Ensures data cannot be read in transit.
2. **Certificate pinning** — Prevents attackers from using fake certificates.
3. **Public Key Infrastructure (PKI)** — Verifies the identity of servers.

---

## 3. IP Spoofing

### What They Are
An attacker forges the source IP address in a packet to make it appear as if it came from a trusted source.

### Real-World Example
**GitHub DDoS (2018):** Attackers spoofed source IPs to overwhelm GitHub with 1.35 Tbps of traffic via memcached servers.
**DNS Amplification:** Attackers send small DNS queries to open recursive DNS servers while spoofing the victim's IP. The DNS server then sends a much larger response to the victim. This technique was used in the 2016 Dyn cyberattack, which took down major sites like Twitter, Netflix, and Reddit.
The Mirai botnet was used to launch massive DNS amplification attacks against Dyn's infrastructure

### Mitigation Strategies
1. **Ingress filtering** — Block packets with invalid source IPs .
2. **Encrypted protocols** — Prevent spoofed traffic from being trusted.
3. **Network monitoring** — Detect abnormal traffic patterns.

---

## 4. DNS Poisoning / Spoofing

### What They Are
An attacker corrupts DNS records so that a domain name resolves to a malicious IP instead of the legitimate one.

### Real-World Example
**Sea Turtle Campaign (2019):** Attackers hijacked DNS records to redirect users of government and telecom companies to malicious sites.

### Mitigation Strategies
1. **DNSSEC** — Cryptographically signs DNS records to prevent tampering.
2. **DNS over HTTPS  / DNS over TLS ** — Encrypts DNS queries.
3. **DNS filtering** — Use trusted resolvers like Cloudflare (1.1.1.1) or Quad9.

---

## Comparison Table

| Attack Type | Attack Vector | Primary Target | Difficulty | Ease of Mitigation |
| :--- | :--- | :--- | :--- | :--- |
| DoS/DDoS | Volume of traffic | Availability | Easy | Medium |
| MITM | Interception | Confidentiality | Medium | Medium |
| IP Spoofing | Forged packets | Trust | Medium | Easy |
| DNS Poisoning | Corrupted records | Integrity | Hard | Medium |

---

## Conclusion: 3 Key Takeaways for Network Administrators

1. **Layered defense is essential.** No single control prevents all attacks. Combine firewalls, encryption, monitoring, and user training.
2. **Encryption.** HTTPS, DNSSEC, and TLS protect data in transit and prevent MITM/DNS attacks.
3. **Monitor.** Many attacks go unnoticed for months. Real-time log monitoring (SIEM, IDS/IPS) is critical.

---

## References

1. NIST – Guide to DDoS Attack Prevention: https://www.nist.gov
2. CISA – Understanding and Responding to DDoS Attacks: https://www.cisa.gov
3. Cloudflare – What is a MITM Attack: https://www.cloudflare.com
4. MITRE ATT&CK – Network-based Techniques: https://attack.mitre.org

---

## Ethical Note
This report is for educational purposes only. It does not condone or encourage the use of these techniques against any system without explicit written authorization.
