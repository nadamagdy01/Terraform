output pub_subnets {
  value       = aws_subnet.PublicSubnet
}

output priv_subnets {
  value       = aws_subnet.PrivateSubnet
}

output vpc_id {
  value       = aws_vpc.myVPC.id
}

output vpc_cidr{
  value       = aws_vpc.myVPC.cidr_block
}