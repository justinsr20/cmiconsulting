resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet(var.vpc_cidr, 2, 0)
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true # need a public ip to be able to talk through IGW

  tags = {
    Name = "${var.environment}-public-subnet-1a"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet(var.vpc_cidr, 2, 1)
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true # need a public ip to be able to talk through IGW

  tags = {
    Name = "${var.environment}-public-subnet-2b"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 2, 2)
  availability_zone = "ap-southeast-2a"

  tags = {
    Name = "${var.environment}-private-subnet-1a"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 2, 3)
  availability_zone = "ap-southeast-2b"

  tags = {
    Name = "${var.environment}-private-subnet-2b"
  }
}