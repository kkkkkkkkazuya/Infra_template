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

# ----------------------------
# Subnet
# ----------------------------
resource "aws_subnet" "infra_temp_public_subnet_1a" {
  vpc_id                  = aws_vpc.infra_temp_vpc.id
  availability_zone       = "ap-northeast-1a"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.project}-${var.env}-public-subnet-1a"
    Env     = "${var.env}"
    Project = "${var.project}"
    Owner   = "${var.owner}"
    Type    = "public"
  }
}

resource "aws_subnet" "infra_temp_public_subnet_1c" {
  vpc_id                  = aws_vpc.infra_temp_vpc.id
  availability_zone       = "ap-northeast-1c"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name    = "${var.project}-${var.env}-public-subnet-1c"
    Env     = "${var.env}"
    Project = "${var.project}"
    Owner   = "${var.owner}"
    Type    = "public"
  }
}

resource "aws_subnet" "infra_temp_private_subnet_1a" {
  vpc_id                  = aws_vpc.infra_temp_vpc.id
  availability_zone       = "ap-northeast-1a"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name    = "${var.project}-${var.env}-private-subnet-1a"
    Env     = "${var.env}"
    Project = "${var.project}"
    Owner   = "${var.owner}"
    Type    = "private"
  }
}

resource "aws_subnet" "infra_temp_private_subnet_1c" {
  vpc_id                  = aws_vpc.infra_temp_vpc.id
  availability_zone       = "ap-northeast-1c"
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name    = "${var.project}-${var.env}-private-subnet-1c"
    Env     = "${var.env}"
    Project = "${var.project}"
    Owner   = "${var.owner}"
    Type    = "private"
  }
}