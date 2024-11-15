terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_key_pair" "hyugns_key" {
  key_name   = "hyungs-key"
  public_key = file("hyungs.pub")

  tags = {
    Name = "hyungs-key"
  }
}