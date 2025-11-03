terraform {
  backend "s3" {
    bucket         = "bhavitha-deployments-statefile"
    region         = "us-east-1"
    key            = "bhavitha-deployments-statefile/EKS-TF/terraform.tfstate"
   # dynamodb_table = "my-dynamodb-table"
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

