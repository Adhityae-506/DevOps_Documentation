#vpc
resource "aws_vpc" "demovpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    "Name" = "learnvpc"
  }
}

#private subnet
resource "aws_subnet" "pri-sub" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Private Subnet"
  }
}

#public subnet

resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Public Subnet"
  }
}

#Internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.demovpc.id

  tags = {
    Name = "learn-igw"
  }
}

#route_table
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.demovpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "learn-route-table"
  }
}

#route table association
resource "aws_route_table_association" "rt-assoication" {
  subnet_id      = aws_subnet.pub-sub.id
  route_table_id = aws_route_table.rt.id
}
