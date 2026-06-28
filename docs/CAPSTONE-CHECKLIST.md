TS-Academy DevOps Capstone Checklist
Repository Setup

- [x] Fork repository (done)
- [x] Clone repository (done)
- [x] Create capstone-build branch (done)
- [x] Configure GitHub remote (done)
- [x] Push branch (done)

Environment Verification

- [x] AWS CLI working (done)
- [x] Terraform installed (done)
- [x] Ansible installed (done)
- [x] Docker installed (done)
- [x] kubectl installed (done)
- [x] Create CAPSTONE-CHECKLIST.md (done)

After we clean up the old infrastructure, add this section near the top:

Legacy Infrastructure Cleanup

- [x] Investigate running EC2 instances (done)
- [x] Locate Terraform state (done)
- [x] Review destroy plan (done)
- [x] Destroy legacy infrastructure (done)
- [x] Verify AWS cleanup (done)
- [x] Verify AWS account access (done)
- [x] Verify Route53 hosted zone (done)

Infrastructure (15 Points)

    Create S3 backend bucket

    Create DynamoDB lock table

    Configure Terraform remote state

    Create VPC

    Create Security Groups

    Create 1 Control Plane EC2

    Create 2 Worker EC2

    Terraform outputs working*

## Infrastructure Phase

### Terraform Backend

- [x] Create S3 state bucket
- [x] Enable bucket versioning
- [x] Enable bucket encryption
- [x] Create DynamoDB lock table
- [x] Verify remote-state resources

### Terraform Structure

- [x] Create infra/terraform
- [x] Create modules/network
- [x] Create modules/security
- [x] Create modules/compute
- [x] Create modules/dns
- [x] Create Terraform root files

Current score progress:

Preparation      ✓
Backend          ✓
Terraform Layout ✓

Next:
Networking

### Remote State

- [x] Create S3 backend bucket
- [x] Create DynamoDB lock table
- [x] Configure Terraform backend
- [x] Initialize remote state
- [x] Verify backend connectivity

Current progress:

Preparation            ✓
Terraform Backend      ✓
Remote State           ✓

Next:
Network Module

## Network Module

- [x] Create network module directory
- [x] Create network variables file
- [x] Create network outputs file
- [x] Create network main file
- [x] Create VPC definition
- [x] Create Internet Gateway
- [x] Create Public Subnets
- [x] Create Route Table
- [x] Create Route Associations
- [x] Remove hardcoded Availability Zones
- [x] Dynamic Availability Zones
- [x] Validate configuration
- [x] Review Terraform plan
- [x] Deploy networking resources
- [x] Verify networking resources
- [x] Export network outputs
- [x] Root Outputs
- [x] Parameterized VPC CIDR in variables.tf
- [x] Network verification

Next milestone:

### Security
- [x] Control Plane Security Group
- [x] Worker Security Group
- [x] Security Outputs
- [x] Terraform Output Added

After that:

### Access Prerequisites
- [x] SSH Key Pair Created (capstone-devops)
- [x] Private Key Secured Locally

### Compute
- [x] Dynamic Ubuntu AMI Lookup (Dynamic Ubuntu 22.04 AMI)
- [x] SSH Key Pair Created
- [x] Control Plane EC2
- [x] Worker 1 EC2
- [x] Worker 2 EC2
- [x] Terraform Outputs Added

## Infrastructure Score Progress

### Infrastructure Requirements:

Backend      ✅
Network      ✅
Security     ✅
Compute      ✅

Current Infrastructure Completion:

~90% Complete

## Validation
- [x] Terraform Outputs
- [x] Terraform State Healthy
- [x] Instances Running
- [x] SSH Validation (SSH Access Confirmed to All Nodes)

Infrastructure Phase Complete ✅

### Ansible Readiness
- [ ] Terraform Outputs
- [ ] Inventory Generation
- [ ] SSH Verification

Cluster Bring-Up (10 Points)

    Hardening role

    k3s-server role

    k3s-agent role

    Cluster nodes join successfully

    kubeconfig retrieved locally

    kubectl get nodes shows Ready

Core Kubernetes (30 Points)

    Namespace

    ConfigMap

    Secret

    PostgreSQL StatefulSet

    PVC

    Migration Job

    Backend Deployment

    Frontend Deployment

    Backend Service

    Frontend Service

    Resource Requests

    Resource Limits

    Startup Probes

    Readiness Probes

    Liveness Probes

    Pod Distribution Across Nodes

    Rolling Updates

    Ingress

    cert-manager

    Let's Encrypt TLS

Advanced Features (15 Points)

    HPA

    NetworkPolicy

    Observability (Prometheus/Grafana)

GitOps (10 Points)

    Install ArgoCD

    Create Application

    Auto Sync

    Demonstrate GitOps Deployment

Documentation (10 Points)

    ARCHITECTURE.md

    RUNBOOK.md

    COST.md

Evidence

    nodes-ready.png

    pods-spread.png

    tls-valid.png

    pvc-persist.log

    zero-downtime.log

    hpa-scale.png

    argocd-synced.png

    failover.png

Submission

    Final review

    Demo rehearsal

    Submit before July 4


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

    Verify Connectivity

Phase 9: Kubernetes (k3s)
Control Plane

    Install k3s Server

    Retrieve Node Token

    Verify Control Plane

Workers

    Join Worker 1

    Join Worker 2

    Verify Cluster Nodes

Validation

    kubectl get nodes

    Verify Ready Status

    Verify Internal Networking

Phase 10: DNS
Route53

    Create app.alameendevops.click

    Create api.alameendevops.click

    Create argocd.alameendevops.click

Validation

    Verify DNS Resolution

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
