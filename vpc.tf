resource "aws_vpc" "tf-ssm-vpc" {
  cidr_block                           = "10.0.0.0/16"
  instance_tenancy                     = "default"
  # ipv4_ipam_pool_id                    =
  # ipv4_netmask_length                  =
  # ipv6_cidr_block                      =
  # ipv6_ipam_pool_id                    =
  # ipv6_netmask_length                  =
  # ipv6_cidr_block_network_border_group =
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = false
  
  tags = {
    Name = "${var.terraform}-vpc"
    Terraform = var.terraform
  }
}