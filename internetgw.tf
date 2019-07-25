resource "aws_internet_gateway" "intercity-vpc-network-prod-internetgw" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id

  tags = {
    Name = "TourCatalog-prod-10.100.0.0/16"
  }
}