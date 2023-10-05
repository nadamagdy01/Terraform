# creating a new route table and forwarding all the requests to the 0.0.0.0/0 CIDR block.
# attaching this route table to the public subnets created (In the Public_Route_association file). So, they will work as the Public Subnets


resource "aws_route_table" "Public_RouteTable" {
  vpc_id = aws_vpc.myVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "Public_RouteTable"
  }
}


