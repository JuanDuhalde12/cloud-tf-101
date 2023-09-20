terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.14.0"
    }
  }
  required_version = "~>1.5.6"
}

provider "aws" {
    region = "us-east-1"
    default_tags {
      tags = var.tags
    }
}
