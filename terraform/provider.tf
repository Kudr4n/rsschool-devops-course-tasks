terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         	   = "kudran-s3-terraform"
    key                = "state/terraform.tfstate"
    region         	   = "eu-central-1"
    encrypt        	   = true
    use_lockfile       = true
 }
}


# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}
  