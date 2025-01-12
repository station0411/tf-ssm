resource "aws_iam_instance_profile" "tf-ssm-iam-instance-profile" {
  name = "${var.terraform}-iam-instance-profile"
  role = aws_iam_role.tf-ssm-iam-role.name
}