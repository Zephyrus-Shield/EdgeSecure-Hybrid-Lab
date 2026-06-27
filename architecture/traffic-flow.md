# System Traffic Flow

## Infrastructure Automation

```
Ansible Playbook
        │
        ▼
     edge01
        │
 SSH Connections
   ┌────┴────┐
   ▼         ▼
backend01 backend02
```

---

## Load Balancing

```
HTTP Client
      │
      ▼
   HAProxy
      │
 ┌────┴────┐
 ▼         ▼
backend01 backend02
```

HAProxy continuously monitors backend health and automatically removes unavailable servers from rotation until they recover.

---

## Centralized Logging

```
backend01
      │
      │
backend02
      │
      ▼
 Remote rsyslog
      │
      ▼
edge01
      │
Journal
```

Both backend servers forward system logs to edge01 for centralized monitoring and future SIEM integration.

---

## Backup Workflow

```
systemd Timer
      │
      ▼
 backup.service
      │
      ▼
 backup.sh
      │
      ▼
 rsync over SSH
      │
 ┌────┴────┐
 ▼         ▼
backend01 backend02
```

Backend02 backups traverse the encrypted WireGuard tunnel before being synchronized to edge01.

---

## Administrative Access

```
Administrator
      │
 SSH Keys
      │
      ▼
edge01
      │
      ▼
Managed Nodes
```

Administrative operations originate exclusively from the hardened bastion host.
