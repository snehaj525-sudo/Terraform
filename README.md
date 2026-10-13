# AWS EC2 Infrastructure Provisioning with Terraform

## Overview

This project demonstrates Infrastructure as Code (IaC) using **Terraform** to provision and manage AWS infrastructure. It uses Terraform configuration files to define AWS provider settings, EC2 instance resources, input variables, and outputs.

The goal is to make infrastructure provisioning repeatable, consistent, and easier to maintain.

## Tech Stack

- **Cloud Provider:** Amazon Web Services (AWS)
- **Infrastructure as Code:** Terraform
- **Compute Service:** Amazon EC2
- **Version Control:** Git and GitHub

## Project Structure

```text
terra/
├── main.tf
├── .terraform.lock.hcl
├── automate.txt
├── .gitignore
└── ec2/
    ├── Variables.tf
    ├── ec2_instance.tf
    ├── output.tf
    ├── providers.tf
    ├── terraform.tf
    ├── .terraform.lock.hcl
    └── terra-key-ec2.pub
```

> Terraform provider downloads, state files, and private key files are excluded from version control.

## Prerequisites

Before running this project, ensure you have:

- An AWS account with appropriate permissions to create and manage EC2 resources.
- Terraform installed.
- AWS credentials configured securely using the AWS CLI or an appropriate credentials profile.
- Git installed.

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/snehaj525-sudo/Terraform.git
cd Terraform
```

### 2. Navigate to the EC2 configuration

```bash
cd ec2
```

### 3. Initialise Terraform

```bash
terraform init
```

This downloads the required provider plugins and prepares the working directory.

### 4. Validate the configuration

```bash
terraform validate
```

### 5. Review the execution plan

```bash
terraform plan
```

Review the proposed changes before creating any AWS resources.

### 6. Provision the infrastructure

```bash
terraform apply
```

Review the plan and type `yes` when prompted if you want to proceed.

### 7. Clean up resources

When you no longer need the infrastructure, review the proposed destruction and run:

```bash
terraform destroy
```

Only destroy resources you created for this project and no longer need.

## Key Terraform Concepts Demonstrated

- **Infrastructure as Code:** Define infrastructure through configuration files.
- **AWS Provider Configuration:** Configure Terraform to communicate with AWS.
- **EC2 Provisioning:** Define and manage compute infrastructure.
- **Input Variables:** Make configurations reusable and configurable.
- **Terraform Outputs:** Display selected information about provisioned resources.
- **Dependency Management:** Use the Terraform dependency lock file to record provider selections.
- **Version Control:** Track infrastructure configuration using Git and GitHub.

## Security Best Practices

- Never commit AWS access keys, private SSH keys, or other secrets.
- Keep Terraform state files out of public repositories because they may contain sensitive information.
- Use IAM permissions following the principle of least privilege.
- Store credentials using secure AWS authentication methods rather than hardcoding them.
- Review Terraform plans before applying changes.
- Review `.gitignore` before committing new files.

## Learning Outcomes

This project provides hands-on practice with Terraform fundamentals, AWS infrastructure provisioning, configuration management, and version control. It also demonstrates how Infrastructure as Code can help make infrastructure deployments repeatable and maintainable.

## Author

**Sneha Jekkula**

GitHub: https://github.com/snehaj525-sudo
