# Task 2: Docker Installation and Application Deployment

## Overview
Installed Docker on EC2 and deployed a custom web application 
accessible on port 8000.

## Steps Performed

### 1. Install Docker
```bash
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable --now docker
sudo usermod -aG docker ubuntu
```

### 2. Build and Run Container
```bash
docker build -t my-webapp .
docker run -d -p 8000:80 --name my-container my-webapp
```

### 3. Verify
```bash
docker ps
curl http://localhost:8000
```

## Files
- `Dockerfile` - Docker image configuration
- `index.html` - Web application page

## Expected Output
Web app accessible at: http://<EC2-PUBLIC-IP>:8000

## Screenshot
<img width="1465" height="590" alt="task2 1" src="https://github.com/user-attachments/assets/28606f30-8c6f-4de5-978e-51ff7c641da8" />
<img width="1305" height="222" alt="task2" src="https://github.com/user-attachments/assets/3c1eda59-0d7c-4dc1-9ed6-1a68e95e8130" />

