resource "aws_subnet" "yash_public_subnet_v2" {
  vpc_id                  = aws_vpc.yash_vpc_v2.id
  cidr_block              = "10.20.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "yash-ssm-v2-public-subnet-us-east-1"
  }
}

resource "aws_subnet" "yash_private_subnet_v2" {
  vpc_id            = aws_vpc.yash_vpc_v2.id
  cidr_block        = "10.20.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "yash-ssm-v2-private-subnet-us-east-1"
  }
}