# ☸️ DevOps Resources

Kubernetes, Terraform, and Infrastructure as Code.

## 📚 Table of Contents

- [Kubernetes](#kubernetes)
- [Terraform](#terraform)
- [Docker Compose](#docker-compose)

---

## ☸️ Kubernetes

### Basic Commands

```bash
# Get pods
kubectl get pods

# Get services
kubectl get services

# Get deployments
kubectl get deployments

# Describe resource
kubectl describe pod <pod-name>

# Get logs
kubectl logs <pod-name>

# Execute command in pod
kubectl exec -it <pod-name> -- /bin/bash

# Apply manifest
kubectl apply -f deployment.yaml

# Delete resource
kubectl delete pod <pod-name>
```

### Deployment Example

```yaml
# deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-app
        image: my-app:latest
        ports:
        - containerPort: 3000
        env:
        - name: DATABASE_URL
          valueFrom:
            secretKeyRef:
              name: db-secret
              key: url
```

---

## 🏗️ Terraform

### Basic Configuration

```hcl
# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"
}

resource "aws_s3_bucket_versioning" "my_bucket" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
```

### Commands

```bash
# Initialize
terraform init

# Plan
terraform plan

# Apply
terraform apply

# Destroy
terraform destroy

# Format
terraform fmt

# Validate
terraform validate
```

---

> Created with ❤️ by Praveen Singh

