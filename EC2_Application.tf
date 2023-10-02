resource "aws_instance" "Application" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PrivateSubnet1.id
  security_groups = [aws_security_group.ssh_port3000_fromVPC.id]  ## come back

tags = {
  Name = "EC2 Application" 
  }
}
