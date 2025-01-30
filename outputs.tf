output "bucket_name" {
  value = module.terrahouce_aws.bucket_name
}

output "website_endpoint" {
  value = module.terrahouce_aws.website_endpoint
}

output "cloudfront_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.terrahouce_aws.cloudfront_url
}