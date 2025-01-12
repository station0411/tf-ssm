resource "aws_route_table" "tf-ssm-route-table" {
  vpc_id           = aws_vpc.tf-ssm-vpc.id
  # route            =
  # propagating_vgws =

  tags = {
    Name = "${var.terraform}-route-table"
    Terraform = var.terraform
  }
}