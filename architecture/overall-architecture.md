# Overall Hybrid Architecture

## Objective

EdgeSecure was designed to simulate an enterprise hybrid infrastructure consisting of both on-premises and cloud resources.

The environment combines infrastructure automation, load balancing, centralized logging, VPN connectivity, backup automation, and system hardening into a single cohesive platform.

---

## High-Level Architecture

```
                               Internet
                                   │
                           Azure Network
                                   │
                     Public IP (backend02)
                                   │
                          WireGuard VPN
                                   │
═══════════════════════════════════════════════════════
              edge01 (Rocky Linux Enterprise)
═══════════════════════════════════════════════════════
• Bastion Host
• Ansible Control Node
• HAProxy Load Balancer
• rsyslog SIEM Collector
• Fail2Ban
• WireGuard Endpoint
• Backup Orchestrator
═══════════════════════════════════════════════════════
                                   │
                    VirtualBox Host-Only Network
                                   │
                           backend01 (Ubuntu)
```

---

## Component Responsibilities

### edge01

Acts as the control plane of the entire infrastructure.

Responsibilities include:

- Secure administration
- Infrastructure automation
- Traffic distribution
- Log aggregation
- VPN gateway
- Backup orchestration
- Security monitoring

---

### backend01

Local application server running inside VirtualBox.

Responsibilities:

- Apache Web Server
- Managed Ansible node
- rsyslog client
- Backup source

---

### backend02

Cloud-hosted Ubuntu server deployed in Microsoft Azure.

Responsibilities:

- Apache Web Server
- Managed Ansible node
- Secure VPN communication
- Remote logging
- Disaster recovery source

---

## Design Philosophy

The architecture intentionally separates the control plane from the workload nodes.

This design follows enterprise infrastructure principles by centralizing management while minimizing the attack surface of managed systems.

For implementation details, refer to the corresponding phase manuals located in `/docs`.
