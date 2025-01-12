resource "tls_private_key" "tf-ssm-tls-private-key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "tf-ssm-key-pair" {
  key_name   = "${var.terraform}-key-pair"
  public_key = tls_private_key.tf-ssm-tls-private-key.public_key_openssh

  tags = {
    Name = "${var.terraform}-key-pair"
    Terraform = var.terraform
  }
}