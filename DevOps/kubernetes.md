# ☸️ Kubernetes Commands

## Pod Management

```bash
# Create pod
kubectl run nginx --image=nginx

# Get pods
kubectl get pods

# Get pods with details
kubectl get pods -o wide

# Describe pod
kubectl describe pod <pod-name>

# Delete pod
kubectl delete pod <pod-name>

# Get pod logs
kubectl logs <pod-name>

# Follow logs
kubectl logs -f <pod-name>

# Execute command
kubectl exec -it <pod-name> -- /bin/bash
```

## Deployment Management

```bash
# Create deployment
kubectl create deployment nginx --image=nginx

# Get deployments
kubectl get deployments

# Scale deployment
kubectl scale deployment nginx --replicas=3

# Update deployment
kubectl set image deployment/nginx nginx=nginx:1.21

# Rollout status
kubectl rollout status deployment/nginx

# Rollback
kubectl rollout undo deployment/nginx
```

## Service Management

```bash
# Expose deployment
kubectl expose deployment nginx --port=80 --type=LoadBalancer

# Get services
kubectl get services

# Describe service
kubectl describe service <service-name>
```

## ConfigMap & Secrets

```bash
# Create configmap
kubectl create configmap my-config --from-literal=key=value

# Get configmaps
kubectl get configmaps

# Create secret
kubectl create secret generic my-secret --from-literal=password=secret

# Get secrets
kubectl get secrets
```

---

> Created with ❤️ by Praveen Singh

