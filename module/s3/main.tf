#########################################################################################################################################################################
#                                                         S3 bucket
#########################################################################################################################################################################

resource "aws_s3_bucket" "logesh-portfolio" {
  bucket = "logesh-shanmugavel-portfolio"
  tags = {
    Name = "logesh-shanmugavel-portfolio"
    Project = "Logesh Portfolio"
  }
}


#Converting private bucket to public bucket 

resource "aws_s3_bucket_public_access_block" "private-to-public" {
  bucket = aws_s3_bucket.logesh-portfolio.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}