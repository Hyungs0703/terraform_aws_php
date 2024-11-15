resource "aws_route_table" "hyungs_natrt" {
  vpc_id = aws_vpc.hyungs_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.hyungs_nat.id
  }

  tags = {
    Name = "hyungs-natrt"
  }
}
