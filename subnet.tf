resource "aws_subnet" "tf-ssm-subnet" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = var.availability_zone.ap_northeast_1.ap_northeast_1a
  # availability_zone_id                           =
  cidr_block                                     = "10.0.1.0/24"
  # customer_owned_ipv4_pool                       =
  enable_dns64                                   = false
  # enable_lni_at_device_index                     =
  enable_resource_name_dns_aaaa_record_on_launch = false
  enable_resource_name_dns_a_record_on_launch    = false
  # ipv6_cidr_block                                =
  # ipv6_native                                    =
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  # outpost_arn                                    =
  # private_dns_hostname_type_on_launch            =
  vpc_id                                         = aws_vpc.tf-ssm-vpc.id

  tags = {
    Name = "${var.terraform}-subnet"
    Terraform = var.terraform
  }
}