# By default subnets are private
# map_public_ip_on_launch = false, which means that subnet is private by default

resource "aws_subnet" "PrivateSubnet" {
  count = 2
  vpc_id     = aws_vpc.myVPC.id
  cidr_block = var.sub_priv_cidr_list_net_module[count.index]  #"10.0.1.0/24"
  availability_zone = var.azs_net_module [count.index] #"us-east-1a"

  tags = {
    Name = "PrivateSubnet"
  }
}


