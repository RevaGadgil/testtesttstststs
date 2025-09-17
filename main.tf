provider "aws" {
  profile = "default"
  version = "~> 3.0"
  region = "eu-west-3"
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "bigbucketgHH"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}

