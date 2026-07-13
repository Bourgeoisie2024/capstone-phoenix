# Phoenix Capstone – TaskApp on Kubernetes

## Project Overview

This repository contains my TS Academy DevOps Capstone Project. The project demonstrates the deployment of a production-style web application on a highly available Kubernetes cluster running on AWS.

The solution provisions cloud infrastructure using Infrastructure as Code, configures Kubernetes automatically with Ansible, deploys applications through GitOps using Argo CD, secures workloads with Kubernetes NetworkPolicies and Sealed Secrets, and provides monitoring with Prometheus and Grafana.

The goal of the project is to demonstrate modern DevOps practices including automation, scalability, security, observability, and high availability.

## Project Objectives

   - Provision AWS infrastructure using Terraform

   - Configure Kubernetes automatically using Ansible

   - Deploy a multi-node K3s cluster

   - Deploy a full-stack application

   - Secure application communication

   - Automate deployments using GitOps

   - Enable HTTPS with Let's Encrypt

   - Implement monitoring and visualization

   - Validate high availability and rolling updates

## Architecture Overview

The platform consists of:

   - AWS Infrastructure provisioned with Terraform

   - Multi-node K3s Kubernetes cluster

   - Traefik Ingress Controller

   - Cert-Manager with Let's Encrypt

   - Stateful PostgreSQL database

   - Flask backend API

   - React frontend

   - Argo CD GitOps deployment

   - Sealed Secrets for secret management

   - Prometheus monitoring

   - Grafana dashboards

## Technologies Used

### Cloud

   - AWS EC2

   - AWS VPC

   - Route53

### Infrastructure as Code

   - Terraform

   - Ansible

### Container Platform

   - Docker

   - Kubernetes (K3s)

### GitOps

   - Argo CD

### Security

   - Sealed Secrets

   - Kubernetes NetworkPolicies

   - Let's Encrypt

   - Cert-Manager

### Monitoring

   - Prometheus

   - Grafana

   - Metrics Server

### Application

   - React

   - Flask

   - PostgreSQL

## Repository Structure

```text
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
├── README.md
└── LICENSE
```

## Infrastructure Summary

The infrastructure includes:

   - AWS Virtual Private Cloud (VPC)

   - Public networking

   - Three EC2 instances

       - Control Plane

       - Worker Node 1

       - Worker Node 2

   - Route53 DNS

   - Automated Kubernetes provisioning

   - Secure HTTPS ingress

## Kubernetes Features Implemented

   - Multi-node K3s cluster

   - Namespaces

   - Deployments

   - StatefulSets

   - Services

   - Ingress

   - Persistent Volumes

   - Horizontal Pod Autoscaler

   - Rolling Updates

   - Worker node failover capability

   - NetworkPolicies

## Monitoring and Observability

Monitoring is implemented using:

   - Metrics Server

   - Prometheus

   - Grafana

The monitoring stack provides:

   - Cluster health metrics

   - Resource utilization

   - Kubernetes workload monitoring

   - Dashboard visualization

## Security

Security controls implemented include:

   - HTTPS with Let's Encrypt

   - Kubernetes NetworkPolicies

   - Sealed Secrets

   - Namespace isolation

   - Secure GitOps workflow

## GitOps Workflow

Application deployment is managed using Argo CD.

The desired cluster state is stored in Git and synchronized automatically with Kubernetes, providing consistent and repeatable deployments.

## Documentation

Additional project documentation is available in the docs/ directory:

   - ARCHITECTURE.md

   - RUNBOOK.md

   - COST.md

   - CAPSTONE-CHECKLIST.md

   - EVIDENCE/

## Deployment Validation

The following project requirements were successfully validated:

   - Infrastructure provisioning

   - Kubernetes cluster deployment

   - HTTPS access

   - Stateful PostgreSQL persistence

   - Horizontal Pod Autoscaling

   - Rolling application updates

   - Worker node failover capability

   - GitOps synchronization

   - Monitoring with Prometheus and Grafana

## Future Improvements

Potential future enhancements include:

   - Multi-region deployment

   - Automated backup strategy

   - CI/CD pipeline integration

   - Centralized logging

   - Disaster recovery automation

## Author

- Al-Ameen Olawale Bakare

- TS Academy DevOps Engineering Bootcamp

## License

- This project is licensed under the MIT License.
