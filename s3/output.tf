output "bucket_domain_name" {
  value = aws_s3_bucket.my_bucket.bucket_domain_name
}

output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}
