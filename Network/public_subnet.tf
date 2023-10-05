# Note: by default subnet is created on private state

resource "aws_subnet" "PublicSubnet" {
  count = 2
  vpc_id     = aws_vpc.myVPC.id
  cidr_block = var.sub_pub_cidr_list_net_module[count.index]  #"10.0.0.0/24"
  availability_zone = var.azs_net_module[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet"
  }
}



