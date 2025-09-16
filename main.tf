provider "aws" {
  region  = "eu-west-3"
  version = "~>6.0"
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "mzbucket2025GZ"
  acl    = "private"
}
