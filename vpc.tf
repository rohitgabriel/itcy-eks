
resource "aws_vpc" "intercity-vpc-network-prod-VPC" {
  cidr_block           = "10.100.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    "Name" = "10.100.0.0/16 - TourCatalog-prod"
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
  }
}

