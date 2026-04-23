#!/bin/bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from <YOUR-IP> to any port 22
sudo ufw allow 80/tcp
sudo ufw allow 8000/tcp
sudo ufw enable
sudo ufw status verbose
