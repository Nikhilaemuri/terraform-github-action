resource "aws_s3_bucket" "bucket" {
  bucket = "nikhila-bucket"
  tags = {
    Name        = "nikhila1114-bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
  versioning {
    enabled = true
  }
}