provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name        = var.name-project
      Environment = var.environment
      Owner       = var.owner
      Department  = var.department
      Project     = var.project
    }
  }
}