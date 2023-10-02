# By default subnets are private
# map_public_ip_on_launch = false, which means that subnet is private by default

resource "aws_subnet" "PrivateSubnet1" {
  vpc_id     = aws_vpc.myVPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "PrivateSubnet1"
  }
}


resource "aws_subnet" "PrivateSubnet2" {
  vpc_id     = aws_vpc.myVPC.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  
  tags = {
    Name = "PrivateSubnet2"
  }
}