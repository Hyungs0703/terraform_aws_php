resource "aws_launch_template" "hyungs_lantemp" {
    name = "hyungs-lantemp"
    block_device_mappings {
      device_name = "/dev/sdf"
      ebs {
        volume_size = 10
        volume_type = "gp2"
      }
    }
    image_id = aws_ami_from_instance.hyungs_ami.id
    instance_type = "t2.micro"
    key_name = "hyungs-key"
    vpc_security_group_ids = [aws_security_group.hyungs_sg.id]
    tag_specifications {
      resource_type = "instance"
      tags = {
        Name = "hyungs-temp"
      }
    }
}