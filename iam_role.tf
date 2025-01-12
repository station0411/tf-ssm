resource "aws_iam_role" "tf-ssm-iam-role" {
  name               = "${var.terraform}-iam-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "${var.terraform}-iam-role"
    Terraform = var.terraform
  }
}