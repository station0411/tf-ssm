resource "aws_vpc_dhcp_options" "tf-ssm-dhcp" {
  domain_name                       = "ssm.tf"
  domain_name_servers               = ["AmazonProvidedDNS"]
  # ipv6_address_preferred_lease_time =
  # ntp_servers                       =
  # netbios_name_servers              =
  # netbios_node_type                 =

  tags = {
    Name = "${var.terraform}-dhcp"
    Terraform = var.terraform
  }
}