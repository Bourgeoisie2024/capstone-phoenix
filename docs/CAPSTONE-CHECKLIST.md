TS-Academy DevOps Capstone Project Checklist

Repository:

    Fork of capstone-phoenix

    Working branch: capstone-build

Phase 1 — Repository & Project Setup
GitHub

  ✅  Fork capstone-phoenix repository

  ✅  Clone repository locally

  ✅  Create capstone-build branch

  ✅  Configure Git remotes

  ✅  Push branch to GitHub

Project Preparation

  ✅  Create CAPSTONE-CHECKLIST.md

  ✅  Verify repository structure

  ✅  Verify AWS account access

  ✅  Verify Route53 hosted zone

Phase 2 — Legacy Infrastructure Cleanup
Discovery

  ✅  Investigate existing EC2 instances

  ✅  Locate Terraform state

  ✅  Review legacy infrastructure

Cleanup

  ✅  Review Terraform destroy plan

  ✅  Destroy legacy infrastructure

  ✅  Remove old EC2 resources

  ✅  Remove old VPC resources

  ✅  Remove old NAT Gateways

  ✅  Verify AWS cleanup completed

Phase 3 — Terraform Backend
Remote State

  ✅  Create S3 backend bucket

  ✅  Enable bucket versioning

  ✅  Enable bucket encryption

  ✅  Create DynamoDB lock table

  ✅  Configure backend.tf

  ✅  Initialize Terraform backend

  ✅  Verify remote state storage

  ✅  Verify state locking

Phase 4 — Terraform Infrastructure
Modular Structure

  ✅  Create network module

  ✅  Create security module

  ✅  Create compute module

  ✅  Create DNS module structure

  ✅  Use Terraform variables

  ✅  Use Terraform outputs

  ✅  Dynamic AMI lookup

  ✅  No hardcoded infrastructure values

Networking

  ✅  Create VPC

  ✅  Create Internet Gateway

  ✅  Create Public Subnet A

  ✅  Create Public Subnet B

  ✅  Create Route Tables

  ✅  Create Route Associations

Security

  ✅  Control Plane Security Group

  ✅  Worker Security Group

  ✅  Cluster Internal Communication Rules

  ✅  SSH Access Rules

Compute

  ✅  Create Control Plane Node

  ✅  Create Worker Node 1

  ✅  Create Worker Node 2

  ✅  Export Public IP Outputs

  ✅  Export Private IP Outputs

Validation

  ✅  Terraform Validate

  ✅  Terraform Plan

  ✅  Terraform Apply

  ✅  Verify VPC

  ✅  Verify Subnets

  ✅  Verify Routing

  ✅  Verify Security Groups

  ✅  Verify Running EC2 Instances

  ✅  Verify SSH Access

Phase 5 — Ansible Cluster Provisioning
Ansible Structure

  ✅  Configure ansible.cfg

  ✅  Create inventory

  ✅  Configure group_vars

  ✅  Create playbooks

  ✅  Create roles

Cluster Provisioning

  ✅  Install k3s server role

  ✅  Retrieve node token

  ✅  Install k3s agent role

  ✅  Join Worker 1

  ✅  Join Worker 2

  ✅  Fetch kubeconfig locally

  ✅  Rewrite kubeconfig server endpoint

Validation

  ✅  Ansible connectivity verified

  ✅  Playbooks execute successfully

  ✅  kubectl access from local machine

  ✅  All nodes Ready

Cluster Status

  ✅  Multi-node cluster operational

  ✅  Control Plane Ready

  ✅  Worker 1 Ready

  ✅  Worker 2 Ready

Phase 6 — Kubernetes Core Application
Namespace

  ✅  Create dedicated namespace

Configuration

  ✅  ConfigMap

  ✅  Secret

  ✅  Secret values protected

Postgres

  ✅  StatefulSet

  ✅  Headless Service

  ✅  PVC

  ✅  Persistent Storage Configured

Backend

  ✅  Deployment

  ✅  Service

  ✅  Resource Requests

  ✅  Resource Limits

  ✅  Readiness Probe

  ✅  Liveness Probe

  ✅  Rolling Update Strategy

  ✅  Pinned Image Tag

Frontend

  ✅  Deployment

  ✅  Service

  ✅  Multiple Replicas

  ✅  Resource Requests

  ✅  Resource Limits

  ✅  Pinned Image Tag

High Availability

  ✅  Backend 2+ Replicas

  ✅  Frontend 2+ Replicas

  ✅  TopologySpreadConstraints

  ✅  Verify Pods Distributed Across Nodes (Evidence)

Database Migration

  ✅  Migration Job Created

  ✅  Migration Job Evidence Captured

Phase 7 — Ingress, DNS & TLS
Traefik

  ✅  Traefik Operational

  ✅  LoadBalancer Service Working

Route53

  ✅  app.alameendevops.click

  ✅  api.alameendevops.click

  ✅  DNS Resolution Verified

Cert-Manager

  ✅  Install cert-manager

  ✅  Install CRDs

  ✅  Create ClusterIssuer

  ✅  Configure Let's Encrypt

TLS

  ✅  Certificate Issued

  ✅  TLS Secret Created

  ✅  HTTPS Frontend Working

  ✅  HTTPS Backend Working

  ✅  Production Certificate Validation

Phase 8 — Evidence Collection
Infrastructure Evidence

  ✅  Terraform Evidence

  ✅  EC2 Evidence

  ✅  Security Group Evidence

Kubernetes Evidence

  ✅  Nodes Ready

  ✅  Pods Running

  ✅  Services

  ✅  Ingress

  ✅  Certificates

  ✅  TLS Secrets

DNS & TLS Evidence

  ✅  Route53 Records

  ✅  DNS Resolution

  ✅  HTTPS Frontend

  ✅  HTTPS API

  ✅  Browser Validation

  ✅  Lock Icon Screenshot

Repository Evidence

  ✅  Evidence committed

  ✅  Evidence pushed to GitHub

Phase 9 — GitOps (ArgoCD)
Installation

  ✅  Install ArgoCD

  ✅  ArgoCD installation

  ✅  ArgoCD dashboard access

  ✅  ArgoCD application creation

  ✅  Automated sync enabled

  ✅  GitOps controller managing the cluster

  ✅  Evidence screenshots

  ✅  Expose ArgoCD Service

  ✅  Configure DNS

  ✅  Application Healthy

  ✅  Automated Sync

  ✅  Automated Pruning

  ✅  Self Heal

  ✅  Repository Connected

  ✅  Git Revision Synced

GitOps

  ✅  Connect Repository

  ✅  Create ArgoCD Application

  ✅  Enable Auto Sync

  ✅  Verify Sync Health

Validation

  ✅  Commit Change

  ✅  Automatic Reconciliation

  ✅  Self Heal enabled

  ✅  Automatic Pruning enabled

  ✅  Sealed Secrets integrated

  ✅  TLS managed through GitOps

  ✅  Revision history optimized

  ✅  Git revision synchronized

  ✅  GitOps Demonstration Evidence

Phase 10 — CI/CD
GitHub Actions

  ✅  Backend Workflow

  ✅  Frontend Workflow

  ✅  Build Images

  ✅  Push Images

Deployment

  ✅  Trigger GitOps Deployment

  ✅  Automated Rollout

  ✅  Deployment Evidence


Phase 11 — Operations, Monitoring & Scaling

Metrics Server

  ✅  Install Metrics Server

  ✅  Verify Metrics Collection

  ✅  kubectl top nodes working

  ✅  kubectl top pods working
  
  ✅  Evidence captured

Horizontal Pod Autoscaler

  ✅  Create HPA
  
  ✅  Configure CPU target
  
  ✅  Verify HPA created
  
  ✅  Load Test Application
  
  ✅  Automatic Scaling Verified
  
  ✅  Scale Down Verified

  ✅  Capture Evidence


Network Policies

  ✅  Default Deny Policy

  ✅  Allow Frontend → Backend

  ✅  Allow Backend → PostgreSQL

  ✅  Allow DNS

  ✅  Backend Egress Policy

  ✅  Validate Connectivity

  ✅  Evidence Captured

  ✅  GitOps Managed


Observability

✅ Monitoring

  ✅  Helm Deployment

  ✅  Prometheus

  ✅  Grafana

  ✅  Node Exporter

  ✅  kube-state-metrics

  ✅  Alertmanager


✅ Prometheus Operational

  ✅  Install kube-prometheus-stack

  ✅  Prometheus Operator Running

  ✅  Prometheus CRD Ready

  ✅  Metrics Collection Working

  ✅  Prometheus Targets Healthy

  ✅  Helm Values Committed

  ✅  Evidence Captured


✅ Grafana Operational

  ✅  Install Grafana

  ✅  Login Verified

  ✅  Kubernetes Cluster Dashboard

  ✅  TaskApp Dashboard

  ✅  Dashboard Evidence Captured


Phase 12 — Security Hardening
Infrastructure

  ⬜  Restrict SSH CIDR

  ⬜  Restrict Kubernetes API Exposure

Kubernetes

  ⬜  Review Secret Management

  ⬜  Review Image Security

  ⬜  Review Resource Limits

Advanced Hardening (Distinction)

  ⬜  securityContext

  ⬜  runAsNonRoot

  ⬜  seccompProfile RuntimeDefault

  ⬜  Drop Linux Capabilities

Phase 13 — Documentation
Architecture

  ⬜  ARCHITECTURE.md

  ⬜  Architecture Diagram

  ⬜  Request Flow Documentation

Operations

  ⬜  RUNBOOK.md

  ⬜  Deployment Procedures

  ⬜  Rollback Procedures

  ⬜  Recovery Procedures

Cost Analysis

  ⬜  COST.md

  ⬜  Monthly Cost Breakdown

  ⬜  Cost Reduction Strategy

Phase 14 — Final Validation
Core Requirements

  ✅  Terraform

  ✅  Ansible

  ✅  Multi-node k3s

  ✅  Stateful Application

  ✅  DNS

  ✅  TLS

  ✅  HTTPS

Distinction Requirements

  ✅  GitOps Operational

  ✅  HPA Operational

  ✅  Network Policies Operational

  ✅  Prometheus Operational

  ✅  Grafana Operational


Evidence

  ✅  Monitoring

  ✅  HPA

  ✅  Network Policies

  ✅  GitOps

  ✅  Final Validation

  ✅  HTTPS

  ✅  DNS

  ✅  Certificates

  ✅  Grafana

  ✅  Prometheus


Submission

  ✅  GitHub Repository Available

  ✅  Pull Request Created

  ✅  Initial Submission Completed

  ⬜  Final Submission Update

  ⬜  Final Demo Preparation

Current Progress Summary

Completed

  ✅  Terraform Infrastructure

  ✅  Remote State Backend

  ✅  AWS Infrastructure

  ✅  Ansible Provisioning

  ✅  Multi-node K3s Cluster

  ✅  Kubernetes Application Deployment

  ✅  PostgreSQL StatefulSet

  ✅  Route53 DNS

  ✅  Traefik Ingress

  ✅  Cert-Manager

  ✅  Let's Encrypt TLS

  ✅  HTTPS Validation

  ✅  Evidence Collection

  ✅  ArgoCD GitOps

  ✅  Sealed Secrets

  ✅  Metrics Server

  ✅  Horizontal Pod Autoscaler

  ✅  Network Policies

  ✅  Prometheus

  ✅  Grafana

  ✅  Monitoring Stack

  ✅  README.md

  ✅  ARCHITECTURE.md
  
Remaining Work

  ⬜  RUNBOOK.md

  ⬜  COST.md

  ⬜  Repository Cleanup

  ⬜  Final Review

  ⬜  Pull Request Update

  ⬜  Final Submission
