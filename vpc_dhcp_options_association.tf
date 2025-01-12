resource "aws_vpc_dhcp_options_association" "tf-ssm-dhcp-association" {
  vpc_id          = aws_vpc.tf-ssm-vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.tf-ssm-dhcp.id
}