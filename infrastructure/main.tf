locals {
  prefix = "${var.app_name}-${terraform.workspace}"
  common_tags = {
    Environment = "${terraform.workspace}"
  }
}