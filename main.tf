terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }


# Provider Block
provider "aws" {
  profile = "default" 
  region  = "us-east-1"
}
backend "remote" {
  organization = "Mouritech"
  workspaces {
    name = "github-actions-demo"
  }
}
}
