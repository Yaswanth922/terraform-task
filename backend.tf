terraform {
  backend "s3" {
    bucket  = "yaswanth-bucket-backend"
    key     = "yash-ssm-v2-us-east-1/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}