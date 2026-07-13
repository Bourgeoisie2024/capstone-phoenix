# Evidence Documentation

## Overview

This directory contains screenshots, command outputs, and validation records demonstrating the successful implementation of the Phoenix Capstone DevOps project requirements.

The evidence collection supports the technical documentation and validates the completion of infrastructure provisioning, Kubernetes deployment, GitOps automation, security implementation, monitoring, scaling, and high availability features.

Each directory contains evidence related to a specific project component or capstone requirement.

---

# Evidence Structure

## Infrastructure and Cluster

### ansible/

Contains evidence showing:

- Automated configuration management
- Successful Ansible playbook execution
- Kubernetes node preparation

### k3s/

Contains evidence showing:

- Multi-node K3s cluster deployment
- Kubernetes node status
- Cluster health validation

---

# Application Platform

## database/

Contains evidence showing:

- PostgreSQL StatefulSet deployment
- Database workload status
- Database functionality validation

## persistence/

Contains evidence showing:

- Persistent Volume Claims
- Persistent storage configuration
- Database data persistence

## storage/

Contains evidence showing:

- Kubernetes storage resources
- Storage validation

---

# GitOps and Deployment Automation

## argocd/

Contains evidence showing:

- Argo CD installation
- Application registration
- Synchronization status
- Healthy application state

## gitops/

Contains evidence showing:

- Git-based deployment workflow
- Repository synchronization
- Automated reconciliation

## rollout/

Contains evidence showing:

- Kubernetes rolling updates
- Application availability during updates

---

# Security

## tls/

Contains evidence showing:

- HTTPS configuration
- Cert-Manager operation
- Let's Encrypt certificate validation

## networkpolicy/

Contains evidence showing:

- Default deny policies
- Allowed application communication paths
- Network traffic validation

---

# Scaling and Operations

## metrics-server/

Contains evidence showing:

- Metrics Server installation
- Node metrics
- Pod metrics collection

## hpa/

Contains evidence showing:

- Horizontal Pod Autoscaler configuration
- CPU-based scaling
- Automatic scaling validation

## failover/

Contains evidence showing:

- Worker node failure simulation
- Pod rescheduling
- Kubernetes self-healing behaviour

---

# Monitoring and Observability

## monitoring/

Contains evidence showing:

- Monitoring stack deployment
- Kubernetes monitoring components

## prometheus/

Contains evidence showing:

- Prometheus installation
- Target health
- Metrics collection

## grafana/

Contains evidence showing:

- Grafana deployment
- Dashboard access
- Cluster visualization

---

# Final Validation

## week18-final-validation/

Contains final project validation evidence, including:

- Completed feature verification
- Capstone requirement checks
- Final operational validation

---

# Evidence Usage

The evidence directory should be reviewed together with:

- README.md
- docs/ARCHITECTURE.md
- docs/RUNBOOK.md
- docs/CAPSTONE-CHECKLIST.md

Together, these documents demonstrate the complete lifecycle of the Phoenix Capstone project:

1. Infrastructure provisioning
2. Kubernetes deployment
3. Application delivery
4. Security implementation
5. GitOps automation
6. Monitoring and observability
7. Scaling and recovery validation
