resource "aws_instance" "yash_private_ec2_v2" {
  ami           = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.yash_private_subnet_v2.id
  iam_instance_profile        = aws_iam_instance_profile.yash_ec2_profile_v2.name
  vpc_security_group_ids      = [aws_security_group.yash_ec2_sg_v2.id]
  associate_public_ip_address = false

  #   user_data = <<-EOF
  # #!/bin/bash
  # dnf install -y amazon-ssm-agent
  # systemctl enable amazon-ssm-agent
  # systemctl restart amazon-ssm-agent
  # EOF

  tags = {
    Name = "yash-amazon-linux-private-v2-us-east-1"
  }
}