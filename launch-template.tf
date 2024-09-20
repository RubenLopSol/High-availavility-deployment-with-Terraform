resource "aws_launch_template" "ec2-template" {
  name          = "web-launch-template"
  image_id      = var.ami-launch-template
  instance_type = var.instance-type
  key_name      = var.key-name

  network_interfaces {
    device_index    = 0
    security_groups = [aws_security_group.asg-sg.id]
  }

  user_data = filebase64("user-data.sh")
  tag_specifications {

    resource_type = "instance"

    tags = {
      Name = "first"
    }
  }
}