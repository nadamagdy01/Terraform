# NAT Gateway can not be launched without Elastic IP

# create Elastic IP
resource "aws_eip" "eip" {
  domain = "vpc"
}


resource "aws_nat_gateway" "NAT_GW1" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.PublicSubnet1.id

  tags = {
    Name = "NAT_GW1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

