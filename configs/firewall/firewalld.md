10.2 firewalld on Rocky Linux
Enable firewalld
sudo systemctl enable --now firewalld

Set Default Deny Policy

sudo firewall-cmd --set-default-zone=drop

This establishes:
● zero-trust default posture,
● all traffic denied unless explicitly allowed.

Allow SSH
sudo firewall-cmd --add-service=ssh --permanent
Allows:
● TCP port 22.

Allow HTTP
sudo firewall-cmd --add-service=http --permanent

Required later for:
● HAProxy,
● Apache.
Reload Rules
sudo firewall-cmd --reload
Applies rules into kernel packet filter.

