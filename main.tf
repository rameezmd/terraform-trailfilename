resource "aws_instance" "terraform-ec2" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name = "terraform-key"

  tags = {
    Name = "TerraformEC2Example"
  }
}
resource "aws_s3_bucket" "terraforms3gg" {
  bucket = var.bucket_name

  tags = {
    Name        = "createdby"
    Environment = "Dev"
  }
}
