# Create a VPC
resource "aws_vpc" "myVPC" {
  cidr_block = var.cidr_net_module #"10.0.0.0/16"

  tags = {
    Name = "myVPC"
  }
}
