resource "aws_route_table_association" "Private_RouteTable_association" {
    count = 2
    subnet_id = aws_subnet.PrivateSubnet[count.index].id
    route_table_id = aws_route_table.Private_RouteTable.id
}