resource "aws_iam_role" "yash_ec2_ssm_role_v2" {
  name = "yash-ec2-ssm-role-v2-us-east-1"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "yash_ssm_attach_v2" {
  role       = aws_iam_role.yash_ec2_ssm_role_v2.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "yash_ec2_profile_v2" {
  name = "yash-ec2-ssm-profile-v2-us-east-1"
  role = aws_iam_role.yash_ec2_ssm_role_v2.name
}