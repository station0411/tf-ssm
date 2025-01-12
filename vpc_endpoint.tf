resource "aws_vpc_endpoint" "tf-ssm-vpc-endpoint-ssm" {
  vpc_id              = aws_vpc.tf-ssm-vpc.id
  service_name        = "com.amazonaws.${var.region}.ssm"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [aws_subnet.tf-ssm-subnet.id]
  security_group_ids  = [aws_security_group.tf-ssm-security-group.id]
  private_dns_enabled = true

  tags = {
    Name = "${var.terraform}-vpc-endpoint-ssm"
    Terraform = var.terraform
  }
}

resource "aws_vpc_endpoint" "tf-ssm-vpc-endpoint-ssmmessages" {
  vpc_id              = aws_vpc.tf-ssm-vpc.id
  service_name        = "com.amazonaws.${var.region}.ssmmessages"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [aws_subnet.tf-ssm-subnet.id]
  security_group_ids  = [aws_security_group.tf-ssm-security-group.id]
  private_dns_enabled = true

  tags = {
    Name = "${var.terraform}-vpc-endpoint-ssmmessages"
    Terraform = var.terraform
  }
}

resource "aws_vpc_endpoint" "tf-ssm-vpc-endpoint-ec2messages" {
  vpc_id              = aws_vpc.tf-ssm-vpc.id
  service_name        = "com.amazonaws.${var.region}.ec2messages"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [aws_subnet.tf-ssm-subnet.id]
  security_group_ids  = [aws_security_group.tf-ssm-security-group.id]
  private_dns_enabled = true

  tags = {
    Name = "${var.terraform}-vpc-endpoint-ec2messages"
    Terraform = var.terraform
  }
}

resource "aws_vpc_endpoint" "tf-ssm-vpc-endpoint-s3" {
  vpc_id              = aws_vpc.tf-ssm-vpc.id
  service_name        = "com.amazonaws.${var.region}.s3"
  vpc_endpoint_type   = "Gateway"
  route_table_ids     = [aws_route_table.tf-ssm-route-table.id]
  private_dns_enabled = false

  tags = {
    Name = "${var.terraform}-vpc-endpoint-s3"
    Terraform = var.terraform
  }
}