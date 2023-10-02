resource "aws_instance" "Bastion" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PublicSubnet1.id
  associate_public_ip_address = true # To allow access from everywhere
  security_groups = [aws_security_group.ssh_from_Anywhere.id]  ## come back

tags = {
  Name = "EC2 Bastion"
}

}