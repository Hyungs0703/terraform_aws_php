resource "aws_internet_gateway" "hyungs_ig" {
  vpc_id = aws_vpc.hyungs_vpc.id

  tags = {
    Name = "hyungs-ig"
  }
}
