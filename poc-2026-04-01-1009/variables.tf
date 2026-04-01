variable "region" {
  type        = string
  description = "The AWS region to deploy to"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "The CIDR block for the subnet"
}

variable "availability_zone" {
  type        = string
  description = "The availability zone to deploy to"
}

variable "ami" {
  type        = string
  description = "The ID of the AMI to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to use for the EC2 instance"
}

variable "rds_allocated_storage" {
  type        = number
  description = "The amount of storage to allocate to the RDS instance"
}

variable "rds_engine" {
  type        = string
  description = "The engine to use for the RDS instance"
}

variable "rds_engine_version" {
  type        = string
  description = "The version of the engine to use for the RDS instance"
}

variable "rds_instance_class" {
  type        = string
  description = "The instance class to use for the RDS instance"
}

variable "rds_name" {
  type        = string
  description = "The name of the RDS instance"
}

variable "rds_username" {
  type        = string
  description = "The username to use for the RDS instance"
}

variable "rds_password" {
  type        = string
  description = "The password to use for the RDS instance"
}

variable "s3_bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}
