resource "aws_instance" "Application" {
  ami           = var.ami_id # ami-0fc5d935ebf8bc3bc
  instance_type = var.instance_type # "t2.micro"
  subnet_id     = module.mynetwork.priv_subnets[0].id
  vpc_security_group_ids = [aws_security_group.ssh_port3000_fromVPC.id]  ## come back



tags = {
  Name = "EC2 Application" 
  }
}
