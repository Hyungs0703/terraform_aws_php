resource "aws_autoscaling_attachment" "hyungs_autosgatt" {
    autoscaling_group_name = aws_autoscaling_group.hyungs_autosg.id
    lb_target_group_arn = aws_lb_target_group.hyungs_albtg.arn
}