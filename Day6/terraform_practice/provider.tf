provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "demouser1" {
  name = "terraformdemo"
  path = "/"

  tags = {
    tag-key = "tag-value"
  }
}