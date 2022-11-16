terraform {
  backend "s3" {
    region  = "us-east-2"
    profile = "terraform"
    bucket  = "terraform-state-1363851"
    key     = "infra/terraform.tfstate"
  }
}