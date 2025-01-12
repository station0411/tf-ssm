resource "aws_instance" "tf-ssm-instance" {
  ami                         = "ami-023ff3d4ab11b2525"
  associate_public_ip_address = false
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.tf-ssm-subnet.id
  vpc_security_group_ids      = [aws_security_group.tf-ssm-security-group.id]
  key_name                    = aws_key_pair.tf-ssm-key-pair.key_name
  iam_instance_profile        = aws_iam_instance_profile.tf-ssm-iam-instance-profile.name

  tags = {
    Name = "${var.terraform}-instance"
    Terraform = var.terraform
  }
}