resource "aws_route_table_association" "hyungs_rtas_puba" {
  subnet_id      = aws_subnet.hyungs_puba.id
  route_table_id = aws_route_table.hyungs_rt.id
}

resource "aws_route_table_association" "hyungs_rtas_pubc" {
  subnet_id      = aws_subnet.hyungs_pubc.id
  route_table_id = aws_route_table.hyungs_rt.id
}
