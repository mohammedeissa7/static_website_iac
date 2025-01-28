# provider "random" {
#   # Configuration options
# }

# # https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
# resource "random_string" "bucket_name" {
#   lower   = true
#   upper   = false
#   length  = 32
#   special = false
# }


resource "aws_s3_bucket" "website_bucket" {

  bucket = var.bucket_name
}

# output "random_bucket_name" {
#   value = random_string.bucket_name.result
# }
