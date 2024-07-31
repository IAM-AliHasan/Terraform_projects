terraform {
  backend "s3" {
    bucket         = "test-s3-demo-xyz" # change this
    key            = "test/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}