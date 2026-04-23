# Task 5: Firewall Configuration

## Overview
Configured UFW firewall and AWS Security Groups to restrict 
unauthorized access.

## Steps Performed

### 1. Install UFW
```bash
sudo apt install -y ufw
```

### 2. Configure Rules
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from <MY-IP> to any port 22
sudo ufw allow 80/tcp
sudo ufw allow 8000/tcp
sudo ufw enable
```

### 3. Verify
```bash
sudo ufw status verbose
```

## Firewall Rules Summary
| Rule | Port | Source |
|------|------|--------|
| SSH  | 22   | My IP only |
| HTTP | 80   | Anywhere |
| App  | 8000 | Anywhere |

## Files
- `firewall-rules.sh` - UFW configuration script

## Screenshot

