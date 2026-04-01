provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
}

resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.main.id]
}

resource "aws_security_group" "main" {
  vpc_id = aws_vpc.main.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "main" {
  allocated_storage    = var.rds_allocated_storage
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  name                 = var.rds_name
  username             = var.rds_username
  password             = var.rds_password
  vpc_security_group_ids = [aws_security_group.main.id]
}

resource "aws_s3_bucket" "main" {
  bucket = var.s3_bucket_name
  acl    = "private"
}
