# EC2 SG
resource "aws_security_group" "yash_ec2_sg_v2" {
  name   = "yash-ec2-ssm-sg-v2-us-east-1"
  vpc_id = aws_vpc.yash_vpc_v2.id

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Endpoint SG
resource "aws_security_group" "yash_endpoint_sg_v2" {
  name   = "yash-endpoint-sg-v2-us-east-1"
  vpc_id = aws_vpc.yash_vpc_v2.id

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [aws_security_group.yash_ec2_sg_v2.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}