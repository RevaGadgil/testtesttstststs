terraform {
  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "1.43.0"
    }
  }
}
provider "aws" {
  profile = "default"
  version = "~> 3.0"
  region = "eu-west-3"
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "bigbucketg2025tutu"

  tags = {
    Name        = "My bucket"
    Environment = "tst"
  }
}

resource "aws_s3_bucket_versioning" "s3bucket_versioning" {
  bucket = aws_s3_bucket.s3bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3bucket_encryption" {
  bucket = aws_s3_bucket.s3bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}



}
