output "bucket_domain_name" {
  value = aws_s3_bucket.my_bucket.website_endpoint
}