# Task 1: Server Setup and SSH Configuration

## Overview
Provisioned an Ubuntu 22.04 EC2 instance on AWS and configured 
secure SSH access using key-based authentication.

## Steps Performed

### 1. EC2 Instance Launch
- AMI: Ubuntu Server 22.04 LTS
- Instance Type: t2.micro (Free Tier)
- Region: ap-south-1 (Mumbai)
- Key Pair: Created new ED25519 key pair (devops-key.pem)

### 2. Connect via SSH
```bash
chmod 400 devops-key.pem
ssh -i devops-key.pem ubuntu@<EC2-PUBLIC-IP>
```

### 3. Verify Passwordless Authentication
```bash
# Check SSH config
sudo cat /etc/ssh/sshd_config | grep PasswordAuthentication
# Output: PasswordAuthentication no

# View authorized keys
cat ~/.ssh/authorized_keys
```

## Expected Output
- SSH login without password prompt
- PasswordAuthentication set to no

## Screenshot
<img width="1270" height="694" alt="task1" src="https://github.com/user-attachments/assets/a061a900-e149-4bff-a4b2-67255fa2127a" />

