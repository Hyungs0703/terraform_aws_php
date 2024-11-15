resource "aws_subnet" "hyungs_puba" {
  vpc_id            = aws_vpc.hyungs_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "hyungs_puba"
  }
}

resource "aws_subnet" "hyungs_pubc" {
  vpc_id            = aws_vpc.hyungs_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hyungs_pubc"
  }
}

resource "aws_subnet" "hyungs_pria" {
  vpc_id            = aws_vpc.hyungs_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "hyungs_pria"
  }
}

resource "aws_subnet" "hyungs_pric" {
  vpc_id            = aws_vpc.hyungs_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hyungs_pric"
  }
}

resource "aws_subnet" "hyungs_dba" {
  vpc_id            = aws_vpc.hyungs_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "hyungs_dba"
  }
}

resource "aws_subnet" "hyungs_dbc" {
  vpc_id            = aws_vpc.hyungs_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hyungs_dbc"
  }
}