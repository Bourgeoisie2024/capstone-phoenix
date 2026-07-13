# DNS Routing Documentation

## Overview

The Phoenix Capstone platform uses Amazon Route53 for DNS management.

The application is exposed through HTTPS endpoints using Traefik Ingress and Cert-Manager.

## DNS Records

The platform uses the following DNS records:

| Record | Purpose |
|---|---|
| app.alameendevops.click | Frontend React application |
| api.alameendevops.click | Backend Flask API |

## Traffic Flow

User Browser
|
v
Route53 DNS
|
v
AWS EC2 Kubernetes Nodes
|
v
Traefik Ingress Controller
|
+----------------+
| |
v v
Frontend Backend API
React/nginx Flask
|
v
PostgreSQL


## TLS

HTTPS certificates are automatically managed using Cert-Manager with Let's Encrypt.

Certificate validation can be checked using:

```bash
kubectl get certificates -A
```

Expected:

READY=True

## Route53 Configuration

The file:

route53-update.json

contains the Route53 change request used during DNS configuration.
Validation

DNS resolution can be verified with:

nslookup app.alameendevops.click

and:

nslookup api.alameendevops.click

Successful resolution confirms DNS routing is working.
