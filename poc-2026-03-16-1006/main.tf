provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_instance" "main" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  vpc_security_group_ids = [aws_security_group.main.id]
  subnet_id = aws_subnet.main.id
}

resource "aws_db_instance" "main" {
  allocated_storage    = var.rds_storage
  engine               = var.rds_engine
  engine_version       = var.rds_version
  instance_class       = var.rds_type
  name                 = var.rds_name
  username             = var.rds_username
  password             = var.rds_password
  vpc_security_group_ids = [aws_security_group.main.id]
  db_subnet_group_name = aws_db_subnet_group.main.name
}

resource "aws_s3_bucket" "main" {
  bucket = var.s3_bucket_name
  acl    = var.s3_acl
}

resource "aws_security_group" "main" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = aws_vpc.main.id
}

resource "aws_subnet" "main" {
  cidr_block = var.subnet_cidr
  vpc_id     = aws_vpc.main.id
  availability_zone = var.subnet_az
}

resource "aws_db_subnet_group" "main" {
  name       = var.db_subnet_group_name
  subnet_ids = [aws_subnet.main.id]
}
