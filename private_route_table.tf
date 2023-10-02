resource "aws_route_table" "Private_RouteTable" {
  vpc_id = aws_vpc.myVPC.id


tags = {
    Name = "PrivateSubnet_RouteTable"
}
}

resource "aws_route_table_association" "Private_RouteTable_association" {
    subnet_id = aws_subnet.PrivateSubnet1.id
    route_table_id = aws_route_table.Private_RouteTable.id
}