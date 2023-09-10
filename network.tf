# ----------------------------
# VPC
# ----------------------------
resource "aws_vpc" "infra_temp_vpc" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = "default"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name    = "${var.project}-${var.env}-vpc"
    Env     = "${var.env}"
    Project = "${var.project}"
    Owner   = "${var.owner}"
  }
}