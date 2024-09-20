## High availavility deployment with Terraform

This project demonstrates the implementation of a high availability infrastructure in AWS using Auto Scaling Groups (ASG) and Elastic Load Balancers (ELB) with Terraform. It also includes the setup of VPC, subnets, Internet Gateway (IG), and route tables.

![structure](2024-09-20_10-08.png)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.68.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_launch_template.ec2-template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.alb-listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.target-group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_route_table.public-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.prta-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.prta-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.alb_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.asg-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.web-subnet1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.web-subnet2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami-launch-template"></a> [ami-launch-template](#input\_ami-launch-template) | Value for EC2 AMI | `string` | n/a | yes |
| <a name="input_az-1"></a> [az-1](#input\_az-1) | Value for AZ 1 | `string` | n/a | yes |
| <a name="input_az-2"></a> [az-2](#input\_az-2) | Value for AZ 2 | `string` | n/a | yes |
| <a name="input_capacity"></a> [capacity](#input\_capacity) | Value for desired instances | `number` | n/a | yes |
| <a name="input_department"></a> [department](#input\_department) | Value for Department | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Value for Environment | `string` | `"DEV"` | no |
| <a name="input_health-check-type"></a> [health-check-type](#input\_health-check-type) | Value for type of health check | `string` | n/a | yes |
| <a name="input_igw-name"></a> [igw-name](#input\_igw-name) | Value for Internet GateWay | `string` | n/a | yes |
| <a name="input_instance-type"></a> [instance-type](#input\_instance-type) | Value for instance type | `string` | n/a | yes |
| <a name="input_key-name"></a> [key-name](#input\_key-name) | Value for key name | `string` | n/a | yes |
| <a name="input_max-size"></a> [max-size](#input\_max-size) | Value for maximum instances runing | `number` | n/a | yes |
| <a name="input_min-size"></a> [min-size](#input\_min-size) | Value for minimum instances runing | `number` | n/a | yes |
| <a name="input_name-project"></a> [name-project](#input\_name-project) | Value for name of project | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | Value for Owner name | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Value for Project number | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Value for region on AWS | `string` | n/a | yes |
| <a name="input_vpc-cidr-block"></a> [vpc-cidr-block](#input\_vpc-cidr-block) | Value for CIDR of VPC | `any` | n/a | yes |
| <a name="input_vpc-name"></a> [vpc-name](#input\_vpc-name) | Value for name of VPC | `string` | n/a | yes |
| <a name="input_web-subnet1-cidr"></a> [web-subnet1-cidr](#input\_web-subnet1-cidr) | Value dor web subnet-1 cidr | `string` | n/a | yes |
| <a name="input_web-subnet1-name"></a> [web-subnet1-name](#input\_web-subnet1-name) | Value for web subnet1 name | `string` | n/a | yes |
| <a name="input_web-subnet2-cidr"></a> [web-subnet2-cidr](#input\_web-subnet2-cidr) | Value dor web subnet-2 cidr | `string` | n/a | yes |
| <a name="input_web-subnet2-name"></a> [web-subnet2-name](#input\_web-subnet2-name) | Value for web subnet2 name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns"></a> [dns](#output\_dns) | value = aws_lb.alb.dns_name |
