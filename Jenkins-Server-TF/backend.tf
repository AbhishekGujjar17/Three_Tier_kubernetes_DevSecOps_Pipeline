terraform {
  backend "s3" {
    bucket         = "replac-with-your-s3-bucket"
    region         = "us-east-1"
    key            = "Three_Tier_kubernetes_DevSecOps_Pipeline/terraform.tfstate"
    dynamodb_table = "replace-with-your-dynamodb-table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
