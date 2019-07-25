# route tables
resource "aws_route_table" "intercity-vpc-network-prod-RouteTableAPublic" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intercity-vpc-network-prod-internetgw.id
  }

  tags = {
    Name = "TourCatalog-prod-A-Public"
  }
}

resource "aws_route_table" "intercity-vpc-network-prod-RouteTableBPublic" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intercity-vpc-network-prod-internetgw.id
  }

  tags = {
    Name = "TourCatalog-prod-B-Public"
  }
}

resource "aws_route_table" "intercity-vpc-network-prod-RouteTableCPublic" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intercity-vpc-network-prod-internetgw.id
  }

  tags = {
    Name = "TourCatalog-prod-C-Public"
  }
}

resource "aws_route_table" "intercity-vpc-network-prod-RouteTableAPrivate" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id

  tags = {
    Name = "TourCatalog-prod-A-Private"
  }
}

resource "aws_route_table" "intercity-vpc-network-prod-RouteTableBPrivate" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id

  tags = {
    Name = "TourCatalog-prod-B-Private"
  }
}

resource "aws_route_table" "intercity-vpc-network-prod-RouteTableCPrivate" {
  vpc_id = aws_vpc.intercity-vpc-network-prod-VPC.id

  tags = {
    Name = "TourCatalog-prod-C-Private"
  }
}
# route associations 
resource "aws_route_table_association" "intercity-vpc-network-prod-RouteTableCPublic" {
  subnet_id      = aws_subnet.intercity-vpc-network-prod-SubnetCPublic.id
  route_table_id = aws_route_table.intercity-vpc-network-prod-RouteTableCPublic.id
}

