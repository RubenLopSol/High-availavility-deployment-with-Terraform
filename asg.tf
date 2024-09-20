resource "aws_autoscaling_group" "asg" {
  name                = "asg-high-avail"
  desired_capacity    = var.capacity
  max_size            = var.max-size
  min_size            = var.min-size
  target_group_arns   = [aws_lb_target_group.target-group.arn]
  health_check_type   = var.health-check-type
  vpc_zone_identifier = [aws_subnet.web-subnet1.id, aws_subnet.web-subnet2.id]

  launch_template {
    id      = aws_launch_template.ec2-template.id
    version = aws_launch_template.ec2-template.latest_version
  }
}