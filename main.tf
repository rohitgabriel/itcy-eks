locals {
  cluster_name = "pih-prod-${random_string.suffix.result}"
}

data "aws_availability_zones" "available" {
}

resource "random_string" "suffix" {
  length  = 3
  special = false
}






# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "2.6.0"


module "eks" {
  source       = "terraform-aws-modules/eks/aws"
  cluster_name = local.cluster_name
  
  subnets      = [
      # aws_subnet.intercity-vpc-network-prod-SubnetAPrivate.id,
      # aws_subnet.intercity-vpc-network-prod-SubnetBPrivate.id,
      # aws_subnet.intercity-vpc-network-prod-SubnetCPrivate.id,
      aws_subnet.intercity-vpc-network-prod-SubnetAPublic.id,
      aws_subnet.intercity-vpc-network-prod-SubnetBPublic.id,
      aws_subnet.intercity-vpc-network-prod-SubnetCPublic.id
      
    ]

  tags = {
    Environment = "prod"
    GithubRepo  = "terraform-aws-eks"
    GithubOrg   = "terraform-aws-modules"
  }

  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id


  worker_groups = [
    {
      name                          = "worker-group-1"
      ami_id     = "ami-01bfe815f644becc0"
      instance_type                 = var.instance-type
      additional_userdata           = "prod"
      asg_desired_capacity          = 2
      additional_security_group_ids = [aws_security_group.worker_group_mgmt_one.id]
    },
    # {
    #   name                          = "worker-group-2"
    #   instance_type                 = "t2.medium"
    #   additional_userdata           = "echo foo bar"
    #   additional_security_group_ids = [aws_security_group.worker_group_mgmt_two.id]
    #   asg_desired_capacity          = 1
    # },
  ]
  #map_roles                            = var.map_roles
  map_users                            = var.map_users
  #map_accounts                         = var.map_accounts
}