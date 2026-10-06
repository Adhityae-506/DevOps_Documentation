output "ec2-public-ip" {
  value = aws_instance.testec2.public_ip
}
output "ec2-private-ip" {
    value = aws_instance.testec2.private_ip
}
output "internet-gateway-id"{
    value = aws_internet_gateway.igw.id
}