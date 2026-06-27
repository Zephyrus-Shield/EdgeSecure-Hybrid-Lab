
10.3 UFW on Ubuntu

Enable Default Deny
sudo ufw default deny incoming

Allow Outbound Traffic
sudo ufw default allow outgoing

Allow SSH
sudo ufw allow ssh

Allow HTTP
sudo ufw allow http

Enable Firewall
sudo ufw enable
