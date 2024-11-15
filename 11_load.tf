resource "aws_lb" "hyungs_alb" {
    name = "hyungs-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.hyungs_sg.id]
    subnets = [aws_subnet.hyungs_puba.id, aws_subnet.hyungs_pubc.id]

    tags = {
      Name = "hyungs-alb"
    }
}

output "load_name" {
    value = aws_lb.hyungs_alb.dns_name
  
}