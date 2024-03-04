resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "My VPC"
  }
}
output "vpc_id" { value = aws_vpc.my_vpc.id }

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "My Subnet"
  }
}
output "subnet_id" { value = aws_subnet.my_subnet.id }

resource "aws_internet_gateway" "my_ig" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "My IG"
  }
}

resource "aws_route_table" "my_rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_ig.id
  }

  tags = {
    Name = "My RT"
  }
}

resource "aws_route_table_association" "my_rta" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_rt.id
}

