# This file to map the public route table to the public subnets

resource "aws_route_table_association" "Public_RouteTable_Association1" {
  count = 2
  subnet_id      = aws_subnet.PublicSubnet[count.index].id
  route_table_id = aws_route_table.Public_RouteTable.id
}
