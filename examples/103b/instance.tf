resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.amazon_linux_ami.id 
  instance_type = "t4g.nano"
  vpc_security_group_ids = [ aws_security_group.my_sg.id ]
  subnet_id              = data.terraform_remote_state.project01.outputs.subnet_id
  tags = {
    Name = "My Instance"
  }

}

resource "aws_security_group" "my_sg" {
  name = "My SG"
  vpc_id = data.terraform_remote_state.project01.outputs.vpc_id
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "My SG"
  }
}

resource "aws_key_pair" "my_keypair" {
  key_name   = "key01"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDE2wh8aFHhT7dLXP7bDF7o2PZ7yj4gPQTGH9tFGHg9rpwy8oZum8AAdFDVY1SRQaqMpB+IjztZSbSyq73oVs6NO5UGjTAvnO8VTe0Iozt+J+JfuVOBgbXItp2Cwr0G7hXKu1T34hfa812TBR0US4Cq1g2GnD/G0WO9j26oUeShQiYpi1uDC/4qL2Ufyn9t4iHaL5SBGrG3R1gK20TrOrWO7sxgfwOo8lF0EnJzYFIXbUgyGYxKX8nD0eNFXbk82Z9ZbO01fORyw+U6nFpmgWnCvUWQVo+aYH7NRwG5kpH/V7eePIPLAAXnzY0yMgBbtNS4ESIhtiP7p3c+f8pP5z7 ramoni"
  tags = {
    Name = "My SG"
  }
}

