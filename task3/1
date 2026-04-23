# Task 3: Container Monitoring

## Overview
Created an automated monitoring script that logs CPU and memory 
usage with timestamps every minute using cron.

## Steps Performed

### 1. Create Directory
```bash
sudo mkdir -p /opt/container-monitor/logs
```

### 2. Deploy Script
```bash
sudo cp monitor.sh /opt/container-monitor/
sudo chmod +x /opt/container-monitor/monitor.sh
```

### 3. Setup Cron Job
```bash
sudo crontab -e
# Added: * * * * * /opt/container-monitor/monitor.sh
```

### 4. Verify Logs
```bash
cat /opt/container-monitor/logs/monitor.log
```

## Files
- `monitor.sh` - Monitoring script

## Sample Log Output
[2026-04-23 10:25:24] STATUS: RUNNING | CPU: 0.00% | MEM: 3.328MiB / 911.5MiB | MEM%:0.37%
[2026-04-23 10:32:01] STATUS: RUNNING | CPU: 0.00% | MEM: 3.328MiB / 911.5MiB | MEM%:0.37%
[2026-04-23 10:33:01] STATUS: RUNNING | CPU: 0.00% | MEM: 3.328MiB / 911.5MiB | MEM%:0.37%

## Screenshot
