resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myVPC.id

  tags = {
    Name = "myVPC_Internet_GW"
  }
}