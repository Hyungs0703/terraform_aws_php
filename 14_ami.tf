resource "aws_ami_from_instance" "hyungs_ami" {
  name = "hyungs-ami"
  source_instance_id = aws_instance.hyungs_weba.id
  depends_on = [ aws_instance.hyungs_weba ]
}