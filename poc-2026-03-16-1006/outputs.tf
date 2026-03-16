output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_instance_id" {
  value = aws_instance.main.id
}

output "rds_instance_id" {
  value = aws_db_instance.main.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.main.id
}
