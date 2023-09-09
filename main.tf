# ----------------------------
# Terraform configuration
# ----------------------------
terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.16"
    }
  }
}

# ----------------------------
# Provider
# ----------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# ----------------------------
# Variable
# ----------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}