resource "aws_lb_listener" "hyungs_albli" {
    load_balancer_arn = aws_lb.hyungs_alb.id
    port = 80
    protocol = "HTTP"
    
    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.hyungs_albtg.arn
    }
}