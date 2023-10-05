resource "aws_instance" "Bastion" {
  ami           = var.ami_id # ami-0fc5d935ebf8bc3bc
  instance_type = var.instance_type # t2.micro
  subnet_id     = module.mynetwork.pub_subnets[0].id
  associate_public_ip_address = true # To allow access from everywhere
  vpc_security_group_ids = [aws_security_group.ssh_from_Anywhere.id]  ## come back

  # provisioner "local_exec" {
  #   command = "echo ${self.public_ip} > inventory.txt"
  #   } 

  provisioner "local-exec" {

    command = "echo 'Bastion Public IP: ${self.public_ip}' > inventory.txt"

  }

tags = {
  Name = "EC2 Bastion"
  }
}