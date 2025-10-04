terraform {
  backend "s3" {
    bucket = "terraform-backend-files-logesh"
    key = "logesh-portfolio"
    region = "us-east-1"
  }
}