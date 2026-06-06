# AWS Terraform Infrastructure as Code (IaC) Project

A structured, production-ready, and modular Terraform repository designed to provision and manage multi-environment infrastructure on AWS. This project leverages a separate modular layout to decouple reusable infrastructure blueprints from environment-specific configurations.

## Architecture & Directory Structure

The repository isolates infrastructure blueprints from live configurations using a **Modular Environment Architecture**. This ensures that configurations for development, staging, and production remain completely decoupled and secure.

```text
Lab Project Folder Structure for Terraform 

soch-terraform-project/

├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── outputs.tf
│   │
│   ├── stage/
│   └── prod/
│
├── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── security-group/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── backend.tf
