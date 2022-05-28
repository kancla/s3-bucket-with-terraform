
provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "my-s3-bucket" {
  acl = "private"

   versioning {
    enabled = "true"
  }

  tags = {
    environment = "DEV"
    terraform = "true"
}

}
