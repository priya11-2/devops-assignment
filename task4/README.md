# Task 4: Secure Monitoring Logs

## Overview
Created a dedicated monitor-user with exclusive access to 
the monitoring directory.

## Steps Performed

### 1. Create User
```bash
sudo useradd -r -m -s /bin/bash monitor-user
```

### 2. Assign Ownership
```bash
sudo chown -R monitor-user:monitor-user /opt/container-monitor
```

### 3. Set Permissions
```bash
sudo chmod -R 700 /opt/container-monitor
```

### 4. Verify Access Control
```bash
# Check ownership
ls -la /opt/container-monitor
# Output: drwx------ monitor-user monitor-user

# monitor-user CAN access
sudo -u monitor-user ls /opt/container-monitor/logs

# ubuntu user CANNOT access
ls /opt/container-monitor/logs
# Output: Permission denied ✅
```

## Screenshot

