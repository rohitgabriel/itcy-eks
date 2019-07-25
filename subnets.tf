
resource "aws_subnet" "intercity-vpc-network-prod-SubnetAPublic" {
  vpc_id                  = aws_vpc.intercity-vpc-network-prod-VPC.id
  cidr_block              = "10.1.0.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-2a"

tags                            = {
          "Name"                                   = "TourCatalog-prod-A-Public",
          "Reach"                                  = "public",
          "kubernetes.io/cluster/${local.cluster_name}" = "shared"
        #  "kubernetes.io/cluster/prod-ekscluster-1" = "shared" 
        }
}

resource "aws_subnet" "intercity-vpc-network-prod-SubnetBPublic" {
  vpc_id                  = aws_vpc.intercity-vpc-network-prod-VPC.id
  cidr_block              = "10.1.32.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-2b"

tags                            = {
          "Name"                                   = "TourCatalog-prod-B-Public",
          "Reach"                                  = "public",
          "kubernetes.io/cluster/${local.cluster_name}" = "shared"
          #"kubernetes.io/cluster/prod-ekscluster-1" = "shared" 
        }
}

resource "aws_subnet" "intercity-vpc-network-prod-SubnetCPublic" {
  vpc_id                  = aws_vpc.intercity-vpc-network-prod-VPC.id
  cidr_block              = "10.1.64.0/20"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-2c"

tags                            = {
          "Name"                                   = "TourCatalog-prod-C-Public",
          "Reach"                                  = "public",
          "kubernetes.io/cluster/${local.cluster_name}" = "shared"
          #"kubernetes.io/cluster/prod-ekscluster-1" = "shared" 
        }
}

resource "aws_subnet" "intercity-vpc-network-prod-SubnetAPrivate" {
  vpc_id                  = aws_vpc.intercity-vpc-network-prod-VPC.id
  cidr_block              = "10.1.16.0/20"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-2a"

tags                            = {
          "Name"                                   = "TourCatalog-prod-A-Private",
          "Reach"                                  = "private",
          "kubernetes.io/cluster/${local.cluster_name}" = "shared",
          "kubernetes.io/role/internal-elb"             = "true"
          #"kubernetes.io/role/internal-elb"        = "1"
        }
}

resource "aws_subnet" "intercity-vpc-network-prod-SubnetBPrivate" {
  vpc_id                  = aws_vpc.intercity-vpc-network-prod-VPC.id
  cidr_block              = "10.1.48.0/20"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-2b"

tags                            = {
          "Name"                                   = "TourCatalog-prod-B-Private",
          "Reach"                                  = "private",
          "kubernetes.io/cluster/${local.cluster_name}" = "shared",
          "kubernetes.io/role/internal-elb"             = "true"
          #"kubernetes.io/role/internal-elb"        = "1"
        }
}

resource "aws_subnet" "intercity-vpc-network-prod-SubnetCPrivate" {
  vpc_id                  = aws_vpc.intercity-vpc-network-prod-VPC.id
  cidr_block              = "10.1.80.0/20"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-2b"

tags                            = {
          "Name"                                   = "TourCatalog-prod-C-Private",
          "Reach"                                  = "private",
          "kubernetes.io/cluster/${local.cluster_name}" = "shared",
          "kubernetes.io/role/internal-elb"             = "true"
          #"kubernetes.io/role/internal-elb"        = "1"
        }
}