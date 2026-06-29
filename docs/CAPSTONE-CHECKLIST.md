#### TS-Academy DevOps Capstone Project Checklist
Goal

Target Score: 90+ (Distinction)

Core Requirements:

    Infrastructure as Code (Terraform)

    Configuration Management (Ansible)

    Kubernetes (k3s)

    CI/CD

    GitOps (ArgoCD)

Advanced Requirements:

    Horizontal Pod Autoscaler (HPA)

    Network Policies

    Observability (Prometheus + Grafana)

Phase 1: Repository Setup
GitHub

    Fork capstone-phoenix repository

    Clone repository locally

    Create capstone-build branch

    Configure Git remotes

    Push branch to GitHub

Project Preparation

    Create CAPSTONE-CHECKLIST.md

    Verify local repository structure

    Verify AWS account access

    Verify Route53 hosted zone

Phase 2: Legacy Infrastructure Cleanup
Discovery

    Investigate existing EC2 instances

    Locate Terraform state

    Review legacy infrastructure

Cleanup

    Review Terraform destroy plan

    Destroy legacy infrastructure

    Remove old EC2 instances

    Remove old RDS resources

    Remove old VPC resources

    Remove old NAT Gateways

    Verify AWS cleanup completed

Phase 3: Terraform Backend
Remote State

    Create S3 backend bucket

    Enable bucket versioning

    Enable bucket encryption

    Create DynamoDB lock table

    Configure backend.tf

    Initialize Terraform backend

    Verify remote state storage

    Verify state locking

Phase 4: Terraform Structure
Repository Layout

    Create infra/terraform

    Create modules/network

    Create modules/security

    Create modules/compute

    Create modules/dns

    Create root Terraform files

Standards

    Remove hardcoded infrastructure values

    Use variables and tfvars

    Use module outputs

    Use dynamic AMI lookup

    Follow Infrastructure-as-Code principles

Phase 5: Network Module
Networking

    Create VPC

    Create Internet Gateway

    Create Public Subnet A

    Create Public Subnet B

    Create Route Table

    Create Route Associations

Dynamic Configuration

    Dynamic Availability Zones

    Parameterized VPC CIDR

    Export Network Outputs

Validation

    Terraform Validate

    Terraform Plan Review

    Terraform Apply

    Verify VPC

    Verify Subnets

    Verify Routing

Phase 6: Security Module
Security Groups

    Create Control Plane Security Group

    Create Worker Security Group

    Configure Cluster Communication

    Configure SSH Access

    Export Security Outputs

Validation

    Terraform Validate

    Terraform Plan Review

    Terraform Apply

    Verify Security Groups

Phase 7: Compute Module
Access

    Create SSH Key Pair

    Secure PEM File

    Verify Key Pair in AWS

EC2 Infrastructure

    Dynamic Ubuntu 22.04 AMI

    Create Control Plane Node

    Create Worker Node 1

    Create Worker Node 2

Outputs

    Control Plane Public IP

    Worker 1 Public IP

    Worker 2 Public IP

    Instance IDs

    Terraform Outputs

Validation

    Verify Terraform State

    Verify EC2 Instances Running

    Verify SSH Access to Control Plane

    Verify SSH Access to Worker 1

    Verify SSH Access to Worker 2

Infrastructure Phase Complete ✅

Phase 8: Ansible Preparation
Structure

    Create ansible.cfg

    Create inventories/dev

    Create group_vars

    Create playbooks directory

    Create roles directory

Inventory

    Create hosts.ini

    Add Control Plane Host

    Add Worker 1 Host

    Add Worker 2 Host

Connectivity

    Configure SSH User

    Configure Private Key

    Run ansible all -m ping

    Verify Connectivity ✅
    
## We can now officially mark:

Terraform Infrastructure   ✅
Ansible Foundation         ✅
Server Preparation         ✅
K3s Role Structure         ✅
Infrastructure Validation  ✅
K3s Variables              ✅
K3s Server Role            ✅
K3s Variable Fix           ✅
K3s Control Plane          ✅
K3s Installation           ✅
Single Node Cluster        ✅
Variable Loading Fix       ✅
Worker Join Debugging      ✅ Root Cause Found
Cluster Validation         ✅
ArgoCD                     ⬜
GitOps                     ⬜
Monitoring                 ⬜
Route53                    ⬜
Documentation              ⬜

Phase 9: Kubernetes (k3s)
Control Plane

✅  Install k3s Server

✅  Retrieve Node Token

✅  Verify Control Plane

Workers

✅  Join Worker 1

✅  Join Worker 2

✅  Verify Cluster Nodes

Validation

✅  kubectl get nodes

✅  Verify Ready Status

Where we are in the Capstone
Section 2 — Infrastructure (Terraform)

Status:

✅ Complete

You have:

    VPC

    Subnets

    Security Groups

    1 control plane

    2 workers

    Remote state

    Outputs

Section 3 — Cluster Bring-up (Ansible)

Status:

✅ Complete

You have:

✅  k3s_server role

✅  k3s_agent role

✅  joined workers

✅  kubeconfig fetched

✅  local kubectl access

    Acceptance Requirement

✅ kubeconfig fetched locally
✅ kubectl working from laptop
✅ kubectl get nodes shows all nodes Ready

Section 4 — Application on Kubernetes

Status:

⬜ Not started

This is where most of the project marks live.

    Verify Internal Networking


Phase 11: GitOps (ArgoCD)
Installation

    Install ArgoCD

    Expose ArgoCD Service

    Configure DNS

GitOps

    Connect Repository

    Create ArgoCD Application

    Enable Auto Sync

Validation

    Verify GitOps Deployment

Phase 12: Application Deployment
Backend

    Deploy Backend

    Configure Secrets

    Configure ConfigMaps

Frontend

    Deploy Frontend

    Configure Services

Validation

    Verify Application Access

Ingress, DNS & TLS
Route53

    Create app.alameendevops.click

    Create api.alameendevops.click

    Create argocd.alameendevops.click

Validation

    Verify DNS Resolution

Postgres

□ StatefulSet
□ PersistentVolumeClaim
□ Secret
□ Service
□ Data Persistence Validation

Cert Manager

□ Install cert-manager
□ ClusterIssuer
□ Let's Encrypt
□ TLS Certificate Validation

High Availability

□ Backend 2+ replicas
□ Frontend 2+ replicas
□ Pod Anti-Affinity
OR
□ TopologySpreadConstraints

□ Verify pods run on different nodes

Phase 13: CI/CD
GitHub Actions

    Backend Workflow

    Frontend Workflow

    Build Docker Images

    Push Images

Deployment

    Trigger ArgoCD Sync

    Verify Automated Deployment

Phase 14: Advanced Requirements
Horizontal Pod Autoscaler

    Install Metrics Server

    Configure HPA

    Verify Scaling

Network Policies

    Create NetworkPolicy

    Restrict Pod Communication

    Verify Enforcement

Observability
Prometheus

    Install Prometheus

    Configure Metrics Collection

Grafana

    Install Grafana

    Create Dashboards

    Verify Metrics Visualization

Phase 15: Security Hardening

    Restrict SSH CIDR

    Restrict Kubernetes API Access

    Review Security Groups

    Review Secrets Management

Phase 16: Documentation & Submission
Documentation

    Architecture Diagram

    Infrastructure Documentation

    Deployment Documentation

    Troubleshooting Notes

Final Validation

    Terraform State Healthy

    Ansible Working

    Kubernetes Healthy

    GitOps Working

    CI/CD Working

    HPA Working

    Network Policies Working

    Prometheus Working

    Grafana Working

Submission

    Final Repository Review

    Final Demo Preparation

    Capstone Submission

This version reflects everything we have actually completed so far, removes duplication, follows the order a reviewer would expect, and clearly separates Core Requirements, Advanced Requirements, and Final Submission Requirements. I would use this as your master checklist going forward.
