provider "aws" {
  region = var.aws_region

}

resource "aws_s3_bucket" "terraform_state_Bucket" {
  bucket = "tf-state-bucket-${lower(var.s3_bucket_env)}"
  tags = {
    Name        = "terraform_state_bucket"
    Environment = var.s3_bucket_env
  }
}

resource "aws_s3_bucket" "lambda_layer_Bucket" {
  bucket        = "lambda-layer-bucket-${lower(var.s3_bucket_env)}"
  force_destroy = true
  tags = {
    Name        = "lambda_layer_bucket"
    Environment = var.s3_bucket_env
  }
}