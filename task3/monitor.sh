#!/bin/bash
CONTAINER_NAME="my-container"
LOG_FILE="/opt/container-monitor/logs/monitor.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    STATS=$(docker stats --no-stream --format \
        "CPU: {{.CPUPerc}} | MEM: {{.MemUsage}}" $CONTAINER_NAME)
    echo "[$TIMESTAMP] STATUS: RUNNING | $STATS" >> "$LOG_FILE"
else
    echo "[$TIMESTAMP] STATUS: CONTAINER NOT RUNNING" >> "$LOG_FILE"
fi
