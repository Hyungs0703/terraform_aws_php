# DB Subnet Group 리소스 추가
resource "aws_db_subnet_group" "hyungs_dbsg" {
  name        = "hyungs-dbsg"
  subnet_ids  = [aws_subnet.hyungs_dba.id, aws_subnet.hyungs_dbc.id]
}

# MySQL DB 인스턴스 설정
resource "aws_db_instance" "hyungs_db" {
  allocated_storage       = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  db_name                = "wordpress"
  identifier             = "hyungs"
  username               = "root"
  password               = "It12345!"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.hyungs_dbsg.id  
  vpc_security_group_ids = [aws_security_group.hyungs_sg.id]
  skip_final_snapshot    = true

  tags = {
    Name = "hyungs-db"
  }
}
