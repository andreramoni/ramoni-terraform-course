provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket   = "ramoni-terraform-states"
    region   = "sa-east-1"
    key      = "myproject02.tfstate"
  }
}


