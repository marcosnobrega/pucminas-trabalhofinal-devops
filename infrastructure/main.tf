locals {
  prefix = "${var.app_name}-${terraform.workspace}"
  common_tags = {
    ManagedBy   = "Terraform"
    Department  = "Systems"
    Provider    = "Company Name"
    Owner       = "DevOps Team"
    Billing     = "Infrastructure"
    Environment = "${terraform.workspace}"
    UserEmail   = "devops.team@gmail.com"
  }
}