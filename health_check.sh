#!/bin/bash
LOG_FILE="/var/log/sys_health.log"
echo "=== HEALTH CHECK RUN: $(date) ===" >> $LOG_FILE
df -h / | awk 'NR==2 {print "Disk Usage: " $5}' >> $LOG_FILE
free -m | awk 'NR==2 {printf "Memory Usage: %.2f%%\n", $3*100/$2}' >> $LOG_FILE
echo "Active Listeners:" >> $LOG_FILE
ss -tulpn | grep LISTEN >> $LOG_FILE
echo "=================================" >> $LOG_FILE

