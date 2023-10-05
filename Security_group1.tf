resource "aws_security_group" "ssh_from_Anywhere" {
  name        = "ssh_sg_from_Anywhere"
  description = "Allow SSH from Anywhere /any IP address"

  vpc_id      = module.mynetwork.vpc_id

# Ingress rule (allow SSH from any IP)
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

 # Egress rule (allow all outbound traffic)
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # Indicates all protocols (all outbound traffic)
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "ssh_security_group_from_Anywhere"
  }
}