terraform {
  backend "s3" {
    bucket = "tfstate-shuntagami"
    key    = "Terraform_test/ecr/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}

