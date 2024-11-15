resource "aws_route_table_association" "hyungs_natrtas_pria" {
  subnet_id      = aws_subnet.hyungs_pria.id
  route_table_id = aws_route_table.hyungs_natrt.id
}

resource "aws_route_table_association" "hyungs_natrtas_pric" {
  subnet_id      = aws_subnet.hyungs_pric.id
  route_table_id = aws_route_table.hyungs_natrt.id
}

resource "aws_route_table_association" "hyungs_natrtas_dba" {
  subnet_id      = aws_subnet.hyungs_dba.id
  route_table_id = aws_route_table.hyungs_natrt.id
}

resource "aws_route_table_association" "hyungs_natrtas_dbc" {
  subnet_id      = aws_subnet.hyungs_dbc.id
  route_table_id = aws_route_table.hyungs_natrt.id
}