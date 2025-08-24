# Multi-Cloud with Kubernetes & Terraform

This project demonstrates a **multi-cloud** setup using **Terraform** to provision Kubernetes clusters on **AWS (EKS)** and **GCP (GKE)**, plus a portable sample app deployed via **Helm** or raw manifests.

## Features
- Terraform modules for EKS and GKE (separate `envs/`)
- Sample Node.js app with Dockerfile
- Kubernetes manifests (Kustomize) and a Helm chart
- GitHub Actions workflow for Terraform fmt/validate/plan
- Makefile helpers

## Quick Start (Local)
```bash
# 1) Build and run app locally
docker build -t demo/multicloud-app:dev .
docker run -p 8080:8080 demo/multicloud-app:dev

# 2) Deploy to any cluster (kubectl configured)
kubectl apply -k k8s/overlays/dev
# or
helm upgrade --install multicloud-app ./helm/myapp -n demo --create-namespace
```

## Terraform (High Level)
- `terraform/modules/eks` — EKS cluster, node groups
- `terraform/modules/gke` — GKE cluster, node pool
- `terraform/envs/aws` and `terraform/envs/gcp` — environment roots

> You need to set cloud credentials in your environment or use a secure backend and a secrets store.
