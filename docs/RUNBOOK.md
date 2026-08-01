# Phoenix Capstone Runbook

## Overview

This runbook provides the operational procedures for deploying, validating, operating, monitoring, troubleshooting, and recovering the Phoenix Capstone platform.

The project demonstrates a production-style deployment of the TaskApp application on a highly available Kubernetes cluster running on AWS. Infrastructure is provisioned using Terraform, configured with Ansible, and managed using GitOps with Argo CD.

The platform includes:

- AWS Infrastructure
- Terraform Infrastructure as Code
- Ansible Configuration Management
- Multi-node K3s Kubernetes Cluster
- Traefik Ingress Controller
- Cert-Manager with Let's Encrypt
- Route53 DNS
- React Frontend
- Flask Backend API
- PostgreSQL StatefulSet
- Argo CD GitOps
- Sealed Secrets
- Metrics Server
- Prometheus
- Grafana
- Kubernetes NetworkPolicies

---

# Repository Layout

```
.
├── argocd/
├── docs/
├── gitops/
├── infra/
│   ├── ansible/
│   ├── backend/
│   └── terraform/
├── manifests/
├── monitoring/
└── README.md
```

---

# Deployment Procedure

## Step 1 – Provision AWS Infrastructure

Navigate to the Terraform configuration.

```bash
cd infra/terraform
```

Initialize Terraform.

```bash
terraform init
```

Review the execution plan.

```bash
terraform plan
```

Provision the infrastructure.

```bash
terraform apply
```

This deploys the required AWS resources, including:

- Virtual Private Cloud (VPC)
- Networking
- Security Groups
- EC2 Instances
- Route53 resources
- Supporting infrastructure

---

## Step 2 – Configure Kubernetes

Navigate to the Ansible directory.

```bash
cd ../ansible
```

Run the main playbook.

```bash
ansible-playbook -i inventory/dev.yaml playbooks/site.yaml
```

Ansible prepares each node by:

- Installing required packages
- Configuring the operating system
- Installing the K3s server
- Joining worker nodes
- Configuring Kubernetes

---

## Step 3 – Verify the Cluster

Verify that all Kubernetes nodes are healthy.

```bash
kubectl get nodes
```

Expected result:

- One Control Plane node
- Two Worker nodes
- All nodes report **Ready**

Verify system workloads.

```bash
kubectl get pods -A
```

## NetworkPolicies

## Network Policy Validation

Verify NetworkPolicies.

```bash
kubectl get networkpolicy -n taskapp
```

## Step 4 – Deploy the Platform with Argo CD

Deploy the Argo CD Application resource.

```bash
kubectl apply -f argocd/taskapp-application.yaml
```

Argo CD continuously synchronizes the desired state stored in the Git repository with the Kubernetes cluster. After synchronization, verify that the application reports:

   - Synced

   - Healthy

That reflects how the capstone-project is actually deployed.

---

All platform components should be in the Running state.

---

# Platform Validation

## Traefik

Verify the Traefik Ingress Controller.

```bash
kubectl get pods -n kube-system
```

Traefik should be running without errors.

---

## Cert-Manager

Verify certificate management.

```bash
kubectl get pods -n cert-manager
```

Verify issued certificates.

```bash
kubectl get certificates -A
```

Certificates should report **Ready=True**.

---

## Argo CD

Verify Argo CD components.

```bash
kubectl get pods -n argocd
```

Verify application synchronization.

```bash
kubectl get applications -n argocd
```

Expected status:

- Synced
- Healthy

---

## Monitoring

Verify the monitoring stack installed with Helm.

```bash
helm list -n monitoring
kubectl get pods -n monitoring
kubectl top nodes
kubectl top pods -A
```

Expected components include:

   - Prometheus

   - Grafana

   - Alertmanager

   - kube-state-metrics

   - Node Exporter

The monitoring namespace should contain:

- Prometheus
- Grafana
- Alertmanager
- kube-state-metrics
- Node Exporter

Successful output confirms that Metrics Server is operational.

---

# Application Operations

Verify application pods.

```bash
kubectl get pods -n taskapp
```

Verify Services.

```bash
kubectl get svc -n taskapp
```

Verify Ingress.

```bash
kubectl get ingress -n taskapp
```

Verify StatefulSets.

```bash
kubectl get statefulsets -n taskapp
```

Verify Persistent Volume Claims.

```bash
kubectl get pvc -n taskapp
```

---

# GitOps Operations

Application configuration is managed through Git.

Operational changes should be committed to the repository rather than applied directly using kubectl whenever possible.

After a Git commit:

1. Push changes to GitHub.
2. Argo CD detects repository changes.
3. Kubernetes is synchronized automatically.
4. Desired state is restored if configuration drift occurs.

Verify synchronization.

```bash
kubectl get applications -n argocd
```

---

# Scaling Operations

Verify the Horizontal Pod Autoscaler.

```bash
kubectl get hpa -n taskapp
```

Observe scaling activity.

```bash
kubectl get hpa -n taskapp -w
```

View backend replicas.

```bash
kubectl get deployment backend -n taskapp
```

Manual scaling may be performed for testing.

```bash
kubectl scale deployment backend \
--replicas=3 \
-n taskapp
```

After testing, the desired replica count should be restored through GitOps.

---

# Rolling Updates

Verify deployment rollout.

```bash
kubectl rollout status deployment/backend -n taskapp
```

View rollout history.

```bash
kubectl rollout history deployment/backend -n taskapp
```

Rollback if required.

```bash
kubectl rollout undo deployment/backend -n taskapp
```

---

# Monitoring

Verify Prometheus.

```bash
kubectl get pods -n monitoring
```

Verify Grafana.

```bash
kubectl get svc -n monitoring
```

Dashboards should display:

- Cluster CPU
- Cluster Memory
- Node Health
- Pod Status
- Application Metrics

---

# Troubleshooting

## Pod CrashLoopBackOff

Inspect the Pod.

```bash
kubectl describe pod <pod-name> -n taskapp
```

View logs.

```bash
kubectl logs <pod-name> -n taskapp
```

View previous logs.

```bash
kubectl logs <pod-name> --previous -n taskapp
```

---

## DNS Problems

Test internal DNS.

```bash
kubectl exec -it <pod-name> -n taskapp -- nslookup postgres-service
```

Inspect CoreDNS.

```bash
kubectl get pods -n kube-system
```

---

## Argo CD Synchronization

Verify application status.

```bash
kubectl get applications -n argocd
```

Describe the application.

```bash
kubectl describe application taskapp -n argocd
```

---

## Certificate Problems

Inspect certificates.

```bash
kubectl get certificates -A
```

Inspect certificate requests.

```bash
kubectl get certificaterequests -A
```

Inspect ClusterIssuers.

```bash
kubectl get clusterissuers
```

---

# Failure Recovery

## Worker Node Failure

Verify node status.

```bash
kubectl get nodes
```

Drain the failed node.

```bash
kubectl drain <node-name> \
--ignore-daemonsets \
--delete-emptydir-data
```

After maintenance, return the node to service.

```text
kubectl uncordon <node-name>
```

Expected behaviour:

- Pods are rescheduled automatically.
- Services remain available.
- Kubernetes automatically reschedules workloads to healthy nodes, while Argo CD ensures the cluster continues to match the desired state stored in Git.

---

## PostgreSQL Recovery

Verify StatefulSet.

```bash
kubectl get statefulsets -n taskapp
```

Verify Persistent Volume Claims.

```bash
kubectl get pvc -n taskapp
```

The database should reconnect to the existing Persistent Volume and retain application data.

---

# Secret Management

Secrets are managed using Sealed Secrets.

The workflow is:

```
Create Secret
      │
      ▼
kubeseal
      │
      ▼
Commit Encrypted Secret
      │
      ▼
Push to Git
      │
      ▼
Argo CD Synchronization
      │
      ▼
Secret Created Inside Cluster
```

## 4. Sealed Secrets verification

```bash
kubectl get sealedsecrets -A

kubectl get secrets -n taskapp
```

Plain-text Kubernetes Secret manifests should not be committed to the repository.

---

# Operational Best Practices

- Treat Git as the source of truth.
- Prefer GitOps over manual kubectl changes.
- Monitor cluster health regularly.
- Review Prometheus and Grafana dashboards.
- Verify certificates before expiration.
- Validate Horizontal Pod Autoscaler behaviour after deployments.
- Confirm NetworkPolicies after application updates.
- Capture evidence for significant operational changes.

---

# Initial Application Bootstrap

After deploying the Kubernetes resources and completing database migrations, the application requires an initial administrative account.

## Steps

Deploy Kubernetes resources:

```bash
kubectl apply -k manifests/base
```

Verify PostgreSQL is running:

```bash
kubectl get pods -n taskapp
```

Create the first administrative user:

```bash
curl -X POST https://api.alameendevops.click/api/auth/signup \
-H "Content-Type: application/json" \
-d '{"username":"admin","password":"admin123"}'
```

Authenticate:

```bash
curl -X POST https://api.alameendevops.click/api/auth/login \
-H "Content-Type: application/json" \
-d '{"username":"admin","password":"admin123"}'
```

Verify JWT authentication and application access through:

https://app.alameendevops.click


---

# Summary

The Phoenix Capstone platform combines Infrastructure as Code, Configuration Management, Kubernetes orchestration, GitOps, security, monitoring, and automated scaling into a production-style deployment. Following the procedures in this runbook enables consistent deployment, reliable operations, effective troubleshooting, and predictable recovery of the platform.
