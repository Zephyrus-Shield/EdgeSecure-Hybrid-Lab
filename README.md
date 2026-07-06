# EdgeSecure Hybrid Infrastructure Lab

Enterprise-style Linux infrastructure engineering lab demonstrating hybrid networking, systems administration, infrastructure automation, load balancing, centralized logging, active defense, and disaster recovery across on-premises and cloud environments.

---

## Project Overview

EdgeSecure is a hands-on infrastructure engineering project designed to simulate how a small enterprise deploys and manages services across both local and cloud infrastructure.

The project focuses on understanding *why* systems behave the way they do—not just following commands. Every phase emphasizes first-principles engineering, troubleshooting methodology, and operational resilience.

The lab consists of:

- **edge01** – Rocky Linux (VirtualBox)
  - Bastion host
  - Ansible control node
  - HAProxy load balancer
  - Centralized logging server
  - Fail2Ban server

- **backend01** – Ubuntu Server (VirtualBox)
  - Local application server

- **backend02** – Ubuntu Server (Microsoft Azure)
  - Cloud application server

---

## Architecture

> *(Architecture diagram will be added in the `architecture/` directory.)*

---

## Technologies Used

### Operating Systems

- Rocky Linux 9
- Ubuntu Server 24.04 LTS

### Virtualization

- Oracle VirtualBox
- Microsoft Azure Virtual Machines

### Networking

- Static IP Addressing
- NAT Networking
- Host-Only Networking
- SSH (Ed25519)
- WireGuard VPN *(Phase 5)*

### Automation

- Ansible
- YAML

### Linux Administration

- LVM
- systemd
- rsyslog
- SELinux
- firewalld
- UFW

### High Availability

- HAProxy

### Security

- SSH Key Authentication
- SELinux
- Fail2Ban
- Azure Network Security Groups

### Disaster Recovery

- rsync
- systemd Timers *(used instead of cron)*

---

# Project Phases

| Phase | Topic | Status |
|--------|-------|--------|
| Phase 1 | LVM & Filesystem Engineering | Implemented |
| Phase 2 | Hybrid Networking & Security | Implemented |
| Phase 3 | Ansible & systemd Resilience | Implemented |
| Phase 4 | HAProxy & SELinux | Implemented |
| Phase 5 | SIEM, Active Defense & Disaster Recovery | Implemented |

---

# Repository Structure

```text
configs/
scripts/
architecture/
screenshots/
docs/
README.md
```

---

# Documentation

Detailed engineering reports are available in the `docs/` directory.

Each report includes:

- Engineering concepts
- Step-by-step implementation
- Configuration explanations
- Packet-level networking concepts
- Troubleshooting methodology
- Fault simulation
- Validation procedures
- Interview preparation notes

---

# Key Engineering Skills Demonstrated

- Linux Systems Administration
- Infrastructure Automation
- Hybrid Cloud Deployment
- SSH Key Management
- Firewall Hardening
- SELinux Policy Management
- HAProxy Load Balancing
- Configuration Management with Ansible
- Service Resilience using systemd
- Centralized Logging
- Active Threat Mitigation
- Disaster Recovery Engineering
- Infrastructure Troubleshooting

---

# Learning Philosophy

This project was built with a first-principles engineering approach.

Rather than simply executing commands, every technology was studied from the perspective of:

- Why it exists
- How it works internally
- How the Linux kernel processes it
- Failure modes
- Troubleshooting methodology
- Real-world operational use

---

# Future Improvements

- Prometheus monitoring
- Grafana dashboards
- Dockerized workloads
- Kubernetes deployment
- TLS termination
- CI/CD integration
- Infrastructure as Code using Terraform

---

# Author

**Edinen Udofia**

Electrical & Electronics Engineer • Linux Infrastructure • Cybersecurity • Infrastructure Automation

Connect with me on LinkedIn to follow the development of the EdgeSecure project.