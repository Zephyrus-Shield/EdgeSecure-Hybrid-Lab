# EdgeSecure Automation Scripts

This directory contains custom scripts developed throughout the EdgeSecure Hybrid Infrastructure Lab.

## backup.sh

Purpose:
- Performs automated configuration backups from backend01 and backend02 using rsync over SSH.
- Used by the Phase 5 disaster recovery automation.

## test_service.sh

Purpose:
- Simulates an intentionally failing service.
- Demonstrates systemd automatic recovery using Restart=on-failure.
- Used during Phase 3 to validate Linux service resilience. 
