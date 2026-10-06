resource "aws_instance" "testec2" {
  ami           = var.ami-reference
  subnet_id = aws_subnet.pub-sub.id
  instance_type = var.free-tier-instance
  key_name = "MyEC2 keypair"
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  associate_public_ip_address = "true"

  tags = {
    name = "demoinstance"
    team = "sjce-devops"
  } 
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.demovpc.id

  tags = {
    Name = "Learn-SG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}