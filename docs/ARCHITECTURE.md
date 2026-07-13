# Architecture

## Overview

This project deploys a production-style TaskApp application on a highly available Kubernetes cluster running on AWS. The infrastructure is provisioned using Terraform, configured with Ansible, and managed through GitOps using Argo CD. Security is enhanced through HTTPS, Kubernetes NetworkPolicies, and Sealed Secrets, while Prometheus and Grafana provide monitoring and observability.

## High-Level Architecture

                    Internet
                        │
                        ▼
                  Route53 DNS
                        │
                        ▼
               Traefik Ingress Controller
                        │
         ┌──────────────┴──────────────┐
         ▼                             ▼
Frontend Service                 Backend Service
         │                             │
    React Pods                    Flask Pods
                                        │
                                        ▼
                              PostgreSQL Service
                                        │
                                        ▼
                          PostgreSQL StatefulSet
                                        │
                                        ▼
                         Persistent Volume Claim

        Argo CD ─────────────► Kubernetes Cluster

        Sealed Secrets ──────► Secret Management

        Prometheus ──────────► Metrics Collection

        Grafana ─────────────► Monitoring Dashboards

## Infrastructure

The platform is deployed on AWS using Infrastructure as Code.

Components include:

   - AWS VPC

   - Public networking

   - Route53 DNS

   - Three EC2 instances

       - One Control Plane node

       - Two Worker nodes

   - Security Groups

   - Kubernetes (K3s)

Terraform provisions the cloud infrastructure while Ansible configures the operating system and installs Kubernetes across all nodes.

## Request Flow

A client accesses the application through the configured Route53 DNS record.

The request reaches the Traefik Ingress Controller, where HTTPS is terminated using certificates issued by Cert-Manager and Let's Encrypt.

Traefik routes frontend requests to the React frontend service. API requests are forwarded to the Flask backend service, which communicates with the PostgreSQL StatefulSet through an internal Kubernetes Service. Database data is stored on persistent volumes to ensure it survives pod restarts and rescheduling.

## High Availability

The application is designed to remain available during failures and updates.

Key mechanisms include:

   - Multi-node Kubernetes cluster

   - Replica-based Deployments

   - Kubernetes Services for load balancing

   - Stateful PostgreSQL deployment with persistent storage

   - Persistent storage

   - Rolling Updates

   - Horizontal Pod Autoscaler

   - Worker node failover capability

   - Kubernetes self-healing

## Security

Security features implemented include:

   - HTTPS using Cert-Manager and Let's Encrypt

   - Kubernetes NetworkPolicies

   - Sealed Secrets

   - Namespace isolation

   - Secure GitOps deployment using Argo CD

## Monitoring

Cluster monitoring is implemented using:

   - Metrics Server

   - Prometheus

   - Grafana

These components provide cluster resource metrics, workload monitoring, and dashboard visualization.

## GitOps Workflow

Application manifests are stored in Git and synchronized automatically using Argo CD.

Any approved changes committed to the repository are reconciled with the Kubernetes cluster, ensuring that the deployed state matches the desired configuration stored in version control.

## Design Decisions

| Component | Decision |
|-----------|----------|
| Terraform | Infrastructure provisioning on AWS |
| Ansible | Automated Kubernetes node configuration |
| K3s | Lightweight multi-node Kubernetes distribution |
| Traefik | Built-in K3s ingress controller |
| Argo CD | Declarative GitOps deployment |
| Sealed Secrets | Secure secret management within Git |
| Prometheus | Cluster monitoring |
| Grafana | Metrics visualization |
| PostgreSQL StatefulSet | Persistent database storage |

## Summary

The completed platform demonstrates a production-oriented Kubernetes deployment with Infrastructure as Code, automated configuration management, GitOps, secure secret handling, monitoring, and high availability. The architecture is designed to be repeatable, scalable, and maintainable while following modern DevOps best practices.
