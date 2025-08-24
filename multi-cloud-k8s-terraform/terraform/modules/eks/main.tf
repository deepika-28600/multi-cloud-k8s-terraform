terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Placeholder VPC and EKS cluster (simplified)
resource "aws_eks_cluster" "this" {
  name     = var.name
  role_arn = var.role_arn
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

output "cluster_name" { value = aws_eks_cluster.this.name }
