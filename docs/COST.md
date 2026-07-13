# Cost Analysis

## Overview

This document provides an estimated monthly cost for operating the Phoenix Capstone platform on AWS.

The platform was designed as a learning project to demonstrate modern DevOps practices, including Infrastructure as Code, Kubernetes, GitOps, security, monitoring, and high availability. Although the environment is suitable for demonstrations and testing, several cost optimization strategies are included to minimize operational expenses.

---

# AWS Resources

The project provisions the following AWS resources:

| Resource | Purpose |
|----------|---------|
| Amazon EC2 | Kubernetes Control Plane and Worker Nodes |
| Amazon VPC | Private networking infrastructure |
| Security Groups | Network access control |
| Route53 Hosted Zone | DNS management |
| Elastic IP (if used) | Stable public access |
| EBS Volumes | Persistent storage for EC2 instances |
| S3 Bucket | Terraform remote state storage |
| DynamoDB Table | Terraform state locking |

---

# Estimated Monthly Cost

The following estimates are based on a small development environment running continuously for one month. Actual costs depend on region, instance type, storage usage, and AWS pricing.

| AWS Service | Estimated Monthly Cost (USD) |
|-------------|-----------------------------:|
| EC2 (3 instances) | $25–45 |
| EBS Volumes | $3–8 |
| Route53 Hosted Zone | ~$0.50 |
| DNS Queries | <$1 |
| S3 Remote State | <$1 |
| DynamoDB State Locking | <$1 |
| Data Transfer | Varies |

**Estimated Total:** **Approximately $30–55 per month**

> Actual charges depend on AWS pricing, region, usage patterns, and whether resources are stopped when not in use.

---

# Cost Optimization

The following practices help reduce operating costs:

- Use small EC2 instance types for development.
- Stop EC2 instances when the cluster is not required.
- Delete unused EBS volumes.
- Remove unused Elastic IP addresses.
- Store Terraform state in a lightweight S3 bucket.
- Use DynamoDB only for Terraform state locking.
- Remove obsolete snapshots and backups.
- Limit unnecessary outbound internet traffic.

---

# Resource Cleanup

To avoid unnecessary AWS charges after testing or demonstration, all infrastructure should be removed.

Destroy the infrastructure using Terraform:

```bash
cd infra/terraform
terraform destroy
```

Terraform removes the managed AWS resources created for the project.

After destruction, verify that no chargeable resources remain in the AWS Console, including:

- EC2 instances
- EBS volumes
- Elastic IP addresses
- Route53 records (if no longer required)
- S3 bucket (if no longer needed)
- DynamoDB table (if no longer needed)

---

# Free Tier Considerations

Some AWS resources may qualify for the AWS Free Tier depending on account eligibility and current AWS offerings. However, running a three-node Kubernetes cluster continuously will generally exceed Free Tier limits.

The platform should therefore be considered a demonstration and learning environment rather than a cost-free production deployment.

---

# Production Cost Considerations

A production deployment would typically include additional services and higher availability requirements, such as:

- Multiple Availability Zones
- Load Balancers
- Automated backups
- Monitoring retention
- Centralized logging
- Disaster recovery
- Larger EC2 instance types
- Auto Scaling Groups

These enhancements would increase the monthly operating cost but improve resilience, scalability, and operational reliability.

---

# Summary

The Phoenix Capstone platform was designed to balance functionality with affordability. By using lightweight AWS resources, Infrastructure as Code with Terraform, and Kubernetes automation, the project demonstrates production-oriented DevOps practices while maintaining reasonable operating costs for a learning environment.
