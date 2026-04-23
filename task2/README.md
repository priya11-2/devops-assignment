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
