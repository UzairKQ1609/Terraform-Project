# AWS Terraform Infrastructure as Code (IaC) Project

A structured, production-ready, and modular Terraform repository designed to provision and manage multi-environment infrastructure on AWS. This project leverages a separate modular layout to decouple reusable infrastructure blueprints from environment-specific configurations.

## Architecture & Directory Structure

The repository isolates infrastructure blueprints from live configurations using a **Modular Environment Architecture**. This ensures that configurations for development, staging, and production remain completely decoupled and secure.

```text
soch-terraform-project/
├── environments/
│   ├── dev/                  # Development environment configuration
│   │   ├── backend.tf        # Isolated remote state configuration for Dev
│   │   ├── main.tf           # Dev root configuration (instantiates modules)
│   │   ├── variables.tf      # Dev input variable declarations
│   │   ├── terraform.tfvars  # Dev environment-specific values (Secrets/IDs)
│   │   └── outputs.tf        # Dev output parameters
│   ├── stage/                # Staging environment configuration
│   └── prod/                 # Production environment configuration
│
├── modules/                  # Reusable, version-controlled infrastructure blueprints
│   ├── ec2/
│   │   ├── main.tf           # Standard AWS EC2 resource definitions
│   │   ├── variables.tf      # Module input parameters
│   │   └── outputs.tf        # Module output variables passed to other resources
│   └── security-group/
│       ├── main.tf           # Standard AWS Security Group definitions
│       ├── variables.tf
│       └── outputs.tf
└── .gitignore                # Explicit patterns excluding local state, binaries, and secrets
