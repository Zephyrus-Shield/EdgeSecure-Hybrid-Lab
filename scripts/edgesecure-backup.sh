#!/usr/bin/env bash

set -euo pipefail

LOGTAG="edgesecure-backup"
# Using the dedicated, unencrypted systemd automation key
KEY="/root/.ssh/id_ed25519_automation"

run_backup() {
  local label="$1" 
  local target="$2" 
  local dest="$3"
  local rc=0

  # Execute rsync. The || rc=$? safely captures the exit code without crashing the script.
  /usr/bin/rsync -az --delete \
    --rsync-path="sudo rsync" \
    --exclude='/credstore' \
    --exclude='/credstore.encrypted' \
    -e "ssh -i ${KEY} -o BatchMode=yes -o ConnectTimeout=10" \
    "${target}" "${dest}" || rc=$?

  # Exit code evaluation
  # 0 = Perfect transfer
  # 24 = Harmless warning (temporary files like .pwd.lock vanished during the scan)
  if [[ ${rc} -eq 0 ]]; then
    logger -t "${LOGTAG}" "SUCCESS: ${label} backup completed cleanly."
  elif [[ ${rc} -eq 24 ]]; then
    logger -t "${LOGTAG}" "SUCCESS: ${label} backup completed (Ignored vanished transient files)."
  else
    logger -t "${LOGTAG}" "FAILURE: ${label} backup failed with exit code ${rc}"
  fi
}

# Ensure destination directories exist
mkdir -p "/backup/backend01/etc/" "/backup/backend02/etc/"

# Execute the syncs
run_backup "backend01" "eudofia@192.168.56.11:/etc/" "/backup/backend01/etc/"
run_backup "backend02" "ubuntu@10.100.0.2:/etc/"     "/backup/backend02/etc/"
