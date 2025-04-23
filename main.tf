provider "aws" {
  region     = "us-west-2"
  
}

resource "aws_instance" "example" {
  ami           = "ami-05572e392e80aee89" 
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Test"
  }
}

resource "aws_s3_bucket" "test" {
  bucket = "mys3bucket-test-aditya-1995"

  tags = {
    Name        = "MyBucket_aditya_sai_123456"
    Environment = "Dev"
  }
}
