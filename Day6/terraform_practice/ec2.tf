resource "aws_instance" "demoinstance" {
  ami           = "ami-08e3b3155fc937a94"
  instance_type = "t3.micro"
  key_name = "Ec2 Keypair"
  security_groups = "sg-0418ebb41c5c6b2fd"

  tags = {
    Name = "HelloWorld"
  }
}