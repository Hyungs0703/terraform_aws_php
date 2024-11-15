resource "aws_route_table" "hyungs_rt" {
  vpc_id = aws_vpc.hyungs_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hyungs_ig.id
  }

  tags = {
    Name = "hyungs-rt"
  }
}
