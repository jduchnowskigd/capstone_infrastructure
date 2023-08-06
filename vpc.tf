# Create a VPC
resource "aws_vpc" "app_vpc" {
  cidr_block = "10.0.0.0/16"
  #public_subnets       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name    = "vpc"
    Owner   = "jduchnowski"
    Project = "2023_internship_gda"
  }
}

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "2.77.0"

#   name                 = "app_vpc"
#   cidr                 = "10.0.0.0/16"
#   azs                  = data.aws_availability_zones.available.names
#   public_subnets       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
#   enable_dns_hostnames = true
#   enable_dns_support   = true

#     tags = {
#     Name    = "vpc"
#     Owner   = "jduchnowski"
#     Project = "2023_internship_gda"
#   }
# }