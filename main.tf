provider "aws" {
  profile = "default"
  version = "~> 3.0"
  region = "eu-west-3"
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "bigbucketg2025tutu"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}

