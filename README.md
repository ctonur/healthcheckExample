# Health Check Example with Docker and Kubernetes

This project demonstrates a simple **health check system** using **Docker** and **Kubernetes**.  
The application runs on **port 8080**, uses **UID 1001**, and includes **readiness, liveness, and startup probes**.

## 🛠 Features
- Runs as **user 1001** inside the container.
- Listens on **port 8080**.
- Implements **readiness, liveness, and startup probes**.
- If the app crashes, **Kubernetes restarts the pod**.

## 🚀 How to Build & Run

### **1️⃣ Build the Docker Image**
```sh
docker build -t healthcheck-demo .
