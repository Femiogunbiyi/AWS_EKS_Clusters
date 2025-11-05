output "aws_s3_bucket" {
    value = aws_s3_bucket.terraform_state.id
    description = "The name of the s3 bucket"
  
}