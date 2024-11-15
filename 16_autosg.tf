resource "aws_autoscaling_group" "hyungs_autosg" {
  name = "hyungs-autosg"
  min_size = 1
  max_size = 6
  desired_capacity = 1
  health_check_grace_period = 60
  health_check_type = "EC2"
  force_delete = false
  vpc_zone_identifier = [aws_subnet.hyungs_puba.id, aws_subnet.hyungs_pubc.id]

  launch_template {
    id = aws_launch_template.hyungs_lantemp.id
    version = "$Latest"
  }
}