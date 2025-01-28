terraform {
  # cloud {

  #   organization = "example-org-5c51bc"

  #   workspaces {
  #     name = "terra-house"
  #   }
  # }
  required_providers {
    # random = {
    #   source  = "hashicorp/random"
    #   version = "3.5.1"
    # }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}


