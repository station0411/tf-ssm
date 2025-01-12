resource "aws_main_route_table_association" "tf-ssm-main-route-table-association" {
  vpc_id         = aws_vpc.tf-ssm-vpc.id
  route_table_id = aws_route_table.tf-ssm-route-table.id
}