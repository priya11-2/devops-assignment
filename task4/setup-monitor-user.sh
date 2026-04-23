#!/bin/bash
sudo useradd -r -m -s /bin/bash monitor-user
sudo chown -R monitor-user:monitor-user /opt/container-monitor
sudo chmod -R 700 /opt/container-monitor
echo "monitor-user setup complete"
