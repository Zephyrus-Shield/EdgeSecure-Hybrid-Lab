# Security Model

## Defense-in-Depth Strategy

EdgeSecure employs multiple independent security controls to protect infrastructure components.

```
Internet
     │
Azure NSG
     │
WireGuard Encryption
     │
edge01 Firewall
     │
SSH Authentication
     │
Managed Infrastructure
```

---

## Security Controls

### Firewalld

Protects edge01 by enforcing inbound traffic restrictions while permitting only required services.

---

### UFW

Provides host-based firewall protection for Ubuntu backend servers.

---

### SELinux

Mandatory Access Control protects critical services on edge01.

A practical example during the lab involved permitting HAProxy to establish outbound backend connections using:

```
setsebool -P haproxy_connect_any on
```

---

### Fail2Ban

Continuously monitors authentication logs and automatically blocks repeated malicious login attempts.

---

### SSH Key Authentication

Automation tasks use dedicated SSH key pairs.

A separate key without a passphrase is reserved exclusively for automated operations such as rsync executed through systemd services, while interactive administration continues to use passphrase-protected credentials.

---

### WireGuard VPN

Provides authenticated and encrypted communication between edge01 and backend02.

The VPN ensures backup synchronization and administrative traffic remain protected even when traversing the public Internet.

---

## Trust Boundary

edge01 represents the primary trust boundary of the infrastructure.

All administration, automation, monitoring, and backup operations originate from this hardened control node, reducing direct exposure of managed systems.
