# Multi-Environment Terraform Infrastructure Deployment

This repository contains Terraform scripts for deploying a multi-environment infrastructure on Azure, including modules for:

- Azure Data Lake Storage (ADLS)
- App Registration
- App Service
- Function App
- Key Vault and Key Vault Secrets
- Logic App
- OpenAI Integration
- Resource Groups
- Storage Accounts

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Directory Structure](#directory-structure)
- [Modules](#modules)
- [Getting Started](#getting-started)
- [Environment Configuration](#environment-configuration)
- [Deployment](#deployment)
- [Accessing Resources](#accessing-resources)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project automates the deployment of a scalable and secure infrastructure on Azure using Terraform. It supports multiple environments (Development, Staging, Production) and uses Azure DevOps for CI/CD.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed locally.
- Azure subscription with appropriate permissions.
- Azure DevOps access for setting up CI/CD pipelines.
- Azure CLI installed and configured for authentication.

## Directory Structure

The repository is organized as follows:

```plaintext
├── terraform
│   ├── modules
│   │   ├── adls
│   │   ├── app_registration
│   │   ├── app_service
│   │   ├── function_app
│   │   ├── key_vault
│   │   ├── key_vault_secrets
│   │   ├── logic_app
│   │   ├── openai
│   │   ├── resource_group
│   │   └── storage_account
│   ├── environments
│   │   ├── dev
│   │   ├── staging
│   │   └── prod
└── azure-pipelines.yml

Modules
1. Azure Data Lake Storage (ADLS)

    Creates and configures ADLS accounts and containers for data storage and access.

2. App Registration

    Registers applications in Azure AD and configures API permissions.

3. App Service

    Deploys web applications on Azure with scaling and monitoring capabilities.

4. Function App

    Configures serverless functions with event-driven programming.

5. Key Vault

    Manages secrets, keys, and certificates securely.

6. Key Vault Secrets

    Adds and manages secrets within the Key Vault.

7. Logic App

    Sets up automated workflows for integrating applications and data.

8. OpenAI Integration

    Configures Azure OpenAI services for intelligent AI capabilities.

9. Resource Groups

    Manages logical containers for Azure resources.

10. Storage Accounts

    Creates storage accounts for various data services (Blob, Queue, File, Table).

Getting Started

    Clone the repository:

    bash

git clone https://github.com/your-repo/terraform-infra.git
cd terraform-infra

Initialize Terraform:

bash

    cd terraform/environments/dev
    terraform init

    Configure backend settings and environment variables in variables.tf and backend.tf files as per your environment.

Environment Configuration

Configure your environment-specific files (dev, staging, prod) with appropriate variable values, including resource names, locations, and credentials.
Deployment

To deploy resources, run the following commands from your environment directory:

bash

terraform plan -out=tfplan
terraform apply -auto-approve tfplan

Accessing Resources

    ADLS: Access via Azure Storage Explorer or Azure Portal.
    App Service: Access via the provided URL.
    Function App: Trigger functions via HTTP requests or Azure Portal.
    Key Vault: Manage secrets via Azure Portal or Azure CLI.
    OpenAI: Use provided endpoints for AI services.

Troubleshooting

    Ensure correct permissions for Azure resources.
    Check state locking issues if errors occur during deployment.
    Verify Terraform state and backend configuration.

Contributing

Contributions are welcome! Please create a pull request or open an issue for any suggestions or bug reports.