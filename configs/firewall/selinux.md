 SELinux Verification

Check mode:
getenforce

Expected:
Enforcing

Part 8 — Allow HAProxy Backend Connections
Critical command:
sudo setsebool -P haproxy_connect_any 1

Breakdown
Part			Meaning
setsebool 		Modify SELinux boolean
-P 			Persistent
haproxy_connect_any 	Permit outbound connections
1 			Enable

Verify Boolean
getsebool haproxy_connect_any
Expected:
haproxy_connect_any --> on
