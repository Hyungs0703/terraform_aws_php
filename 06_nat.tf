resource "aws_eip" "hyungs_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "hyungs_nat" {
  allocation_id = aws_eip.hyungs_eip.id
  subnet_id     = aws_subnet.hyungs_puba.id

  tags = {
    Name = "hyungs-nat"
  }
}
