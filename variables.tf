variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type = string
}
variable "index_html_filepath" {
  type = string  
}

variable "error_html_filepath" {
  type = string  
}