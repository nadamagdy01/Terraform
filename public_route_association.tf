# This file to map the public route table to the public subnets

resource "aws_route_table_association" "Public_RouteTable_Association1" {
  subnet_id      = aws_subnet.PublicSubnet1.id
  route_table_id = aws_route_table.Public_RouteTable.id
}


resource "aws_route_table_association" "Public_RouteTable_Association2" {
  subnet_id      = aws_subnet.PublicSubnet2.id
  route_table_id = aws_route_table.Public_RouteTable.id
}