resource "aws_s3_bucket" "a" {

  bucket = var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
 "b" {
  bucket = "my-test-bucket-456"

  tags = {
    Name        = "My-Bucket-b"
    Environment = "Dev"
  }
}
}
