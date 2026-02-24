resource "aws_route_table" "yash_public_rt_v2" {
  vpc_id = aws_vpc.yash_vpc_v2.id
}

resource "aws_route" "yash_public_route_v2" {
  route_table_id         = aws_route_table.yash_public_rt_v2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.yash_igw_v2.id
}

resource "aws_route_table_association" "yash_public_assoc_v2" {
  subnet_id      = aws_subnet.yash_public_subnet_v2.id
  route_table_id = aws_route_table.yash_public_rt_v2.id
}

resource "aws_route_table" "yash_private_rt_v2" {
  vpc_id = aws_vpc.yash_vpc_v2.id
}

resource "aws_route_table_association" "yash_private_assoc_v2" {
  subnet_id      = aws_subnet.yash_private_subnet_v2.id
  route_table_id = aws_route_table.yash_private_rt_v2.id
}