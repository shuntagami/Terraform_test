terraform {
  backend "s3" {
    bucket = "tfstate-shuntagami"
    key = "terraform_test/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
 region = "ap-northeast-1"
}