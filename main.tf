provider "aws" {
  region  = "eu-west-3"
  profile = "default"
  version = "~> 3.0"

}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "bigbucketgHH"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }


}