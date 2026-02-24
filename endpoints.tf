resource "aws_vpc_endpoint" "yash_ssm_v2" {
  vpc_id              = aws_vpc.yash_vpc_v2.id
  service_name        = "com.amazonaws.us-east-1.ssm"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [aws_subnet.yash_private_subnet_v2.id]
  security_group_ids  = [aws_security_group.yash_endpoint_sg_v2.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint" "yash_ec2messages_v2" {
  vpc_id              = aws_vpc.yash_vpc_v2.id
  service_name        = "com.amazonaws.us-east-1.ec2messages"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [aws_subnet.yash_private_subnet_v2.id]
  security_group_ids  = [aws_security_group.yash_endpoint_sg_v2.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint" "yash_ssmmessages_v2" {
  vpc_id              = aws_vpc.yash_vpc_v2.id
  service_name        = "com.amazonaws.us-east-1.ssmmessages"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [aws_subnet.yash_private_subnet_v2.id]
  security_group_ids  = [aws_security_group.yash_endpoint_sg_v2.id]
  private_dns_enabled = true
}