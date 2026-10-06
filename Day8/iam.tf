resource "aws_iam_user" "demouser1" {
  name = "demo"
  path = "/"

  tags = {
    purpose = "hands-on"
  }
}