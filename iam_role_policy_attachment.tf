resource "aws_iam_role_policy_attachment" "tf-ssm-iam-role-policy-attachment" {
  role       = aws_iam_role.tf-ssm-iam-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}