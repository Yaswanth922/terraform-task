resource "aws_internet_gateway" "yash_igw_v2" {
  vpc_id = aws_vpc.yash_vpc_v2.id
}