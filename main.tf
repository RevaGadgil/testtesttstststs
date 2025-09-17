provider "aws" {
  region  = "eu-west-3"
<<<<<<< HEAD
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
=======
  version = "~>6.0"
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "mzbucket2025GZ"
  acl    = "private"
}
>>>>>>> 5de4cb889961a380bde4a1477e6eb660cbcb12f6
