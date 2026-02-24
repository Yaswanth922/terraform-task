resource "aws_vpc" "yash_vpc_v2" {
  cidr_block           = "10.20.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "yash-ssm-v2-vpc-us-east-1"
  }
}