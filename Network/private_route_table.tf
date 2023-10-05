resource "aws_route_table" "Private_RouteTable" {
  vpc_id = aws_vpc.myVPC.id


tags = {
    Name = "PrivateSubnet_RouteTable"
}
}

