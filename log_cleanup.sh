#!/bin/bash
find /var/log -type f -name "*.log" -size +50M -exec truncate -s 0 {} \;
echo "[$(date)] Executed routine log truncation script." >> /var/log/cleanup_history.log

