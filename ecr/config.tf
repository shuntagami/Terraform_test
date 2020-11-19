terraform {
 backend "s3" {
  bucket = "tfstate-shuntagami" 
  key = "sample/ecr/terraform.tfstate"
  region = "ap-northeast-1"
 }
}
provider "aws" {
 region = "ap-northeast-1"
}

