#! Provider & Def.tags       (ExtensionsVSC 'Better Comments')
variable "name-project" {
  description = "Value for name of project"
  type        = string
}
variable "region" {
  description = "Value for region on AWS"
  type        = string
}
variable "environment" {
  description = "Value for Environment"
  default     = "DEV"
  type        = string
}
variable "owner" {
  description = "Value for Owner name"
  type        = string
}
variable "department" {
  description = "Value for Department"
  type        = string
}
variable "project" {
  description = "Value for Project number"
  type        = string
}
#! VPC
variable "vpc-cidr-block" {
  description = "Value for CIDR of VPC"
}
variable "vpc-name" {
  description = "Value for name of VPC"
  type        = string
}
#! Subnets Public
variable "web-subnet1-cidr" {
  description = "Value dor web subnet-1 cidr"
  type        = string
}
variable "web-subnet2-cidr" {
  description = "Value dor web subnet-2 cidr"
  type        = string
}
variable "az-1" {
  description = "Value for AZ 1"
  type        = string
}
variable "az-2" {
  description = "Value for AZ 2"
  type        = string
}
variable "web-subnet1-name" {
  description = "Value for web subnet1 name"
  type        = string
}
variable "web-subnet2-name" {
  description = "Value for web subnet2 name"
  type        = string
}
#! IGW
variable "igw-name" {
  description = "Value for Internet GateWay"
  type        = string
}
#! LAUNCH-TEMPLATE
variable "ami-launch-template" {
  description = "Value for EC2 AMI"
  type        = string
}
variable "instance-type" {
  description = "Value for instance type"
  type        = string
}
variable "key-name" {
  description = "Value for key name"
  type        = string
}
#! ASG
variable "capacity" {
  description = "Value for desired instances"
  type        = number
}
variable "max-size" {
  description = "Value for maximum instances runing"
  type        = number
}
variable "min-size" {
  description = "Value for minimum instances runing"
  type        = number
}
variable "health-check-type" {
  description = "Value for type of health check"
  type        = string
}