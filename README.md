# terraform-azure-infra
# Terraform Azure Infrastructure

Modular, production-grade Terraform deployment for Azure.

## Structure

- `modules/`: Shared, reusable Terraform modules
- `environments/dev`: Dev environment consuming modules
- `.github/workflows`: CI pipeline

## How to Run (Locally)

```bash
cd environments/dev
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
