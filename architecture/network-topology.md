# Network Topology

## Physical Topology

```
                     Internet
                         │
                  Azure Public Network
                         │
                  backend02 (Azure)
                         │
                 WireGuard Tunnel
                         │
────────────────────────────────────────
          edge01 (Rocky Linux)
────────────────────────────────────────
     Host-Only Adapter
             │
             │
      backend01 (Ubuntu)
```

---

## Network Segments

### Host-Only Network

Used for communication between:

- edge01
- backend01

Characteristics:

- Private
- Non-routable
- Internal laboratory traffic only

---

### Azure Public Network

Provides Internet connectivity for backend02.

Protected using:

- Azure Network Security Groups
- Ubuntu Firewall
- WireGuard encryption

---

### WireGuard Overlay Network

Creates a secure encrypted tunnel between:

- edge01
- backend02

Used for:

- rsync backups
- Administrative traffic
- Secure internal communication

---

## Addressing Strategy

| System	 | Network |
|----------------|----------|
| edge01	 | 192.168.56.10 |
| backend01	 | 192.168.56.11 |
| backend02	 | Azure Public IP + WireGuard VPN |

The WireGuard overlay allows backend02 to behave as though it were part of the private infrastructure while remaining securely hosted in Azure.
