#!/bin/bash

LOG_FILE="logs/system_health.log"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM_USAGE=$(free | awk '/Mem/ {printf "%.2f", $3/$2 * 100}')

echo "$(date) | CPU: $CPU_USAGE% | Memory: $MEM_USAGE%" >> $LOG_FILE