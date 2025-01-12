resource "aws_security_group" "tf-ssm-security-group" {
  name   = "${var.terraform}-security-group"
  vpc_id = aws_vpc.tf-ssm-vpc.id

  ingress {
    description = "Allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.terraform}-security-group"
    Terraform = var.terraform
  }
}