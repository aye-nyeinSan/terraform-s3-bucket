
variable "s3_bucket_env" {

  description = "The environment of the s3 buckets"
  type        = string
}


variable "aws_region" {
  description = "The region we will use in AWS"
  type        = string
}

variable "aws_accessKey" {
  description = "The accessKey we will use in AWS"
  type        = string
  sensitive   = true
}

variable "aws_secretKey" {
  description = "The secretKey we will use in AWS"
  type        = string
  sensitive   = true
}
