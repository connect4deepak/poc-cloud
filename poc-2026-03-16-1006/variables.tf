variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "ec2_ami" {
  type        = string
  description = "EC2 AMI ID"
}

variable "ec2_type" {
  type        = string
  description = "EC2 instance type"
}

variable "rds_storage" {
  type        = number
  description = "RDS storage size"
}

variable "rds_engine" {
  type        = string
  description = "RDS engine"
}

variable "rds_version" {
  type        = string
  description = "RDS engine version"
}

variable "rds_type" {
  type        = string
  description = "RDS instance type"
}

variable "rds_name" {
  type        = string
  description = "RDS database name"
}

variable "rds_username" {
  type        = string
  description = "RDS database username"
}

variable "rds_password" {
  type        = string
  description = "RDS database password"
}

variable "s3_bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "s3_acl" {
  type        = string
  description = "S3 bucket ACL"
}

variable "security_group_name" {
  type        = string
  description = "Security group name"
}

variable "security_group_description" {
  type        = string
  description = "Security group description"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet CIDR block"
}

variable "subnet_az" {
  type        = string
  description = "Subnet availability zone"
}

variable "db_subnet_group_name" {
  type        = string
  description = "DB subnet group name"
}
