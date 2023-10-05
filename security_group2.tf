resource "aws_security_group" "ssh_port3000_fromVPC" {
  name        = "ssh_sg_ssh_port3000"
  description = "Security group allowing SSH and port 3000 from VPC CIDR"

  vpc_id      = module.mynetwork.vpc_id

  # Ingress rule for SSH from VPC CIDR
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [module.mynetwork.vpc_cidr]
    
  }

  # Ingress rule for port 3000 from VPC CIDR
    ingress {
    description      = "TLS from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [module.mynetwork.vpc_cidr]
    
  }

 # Egress rule (allow all outbound traffic)
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # Indicates all protocols (all outbound traffic)
    cidr_blocks      = [module.mynetwork.vpc_cidr]
    
  }

  tags = {
    Name = "ssh_security_group_ssh_port3000"
  }
}