# Creating Route table

resource "aws_route_table" "bankapp-eks-route-table" {
  vpc_id = aws_vpc.bankapp-eks-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.bankapp-eks-igw.id
  }

  tags = {
    Name = "bankapp-eks-igw"
  }
}

# Route table association

resource "aws_route_table_association" "bankapp-eks-route-table-association1" {
  subnet_id      = aws_subnet.eks-bankapp-public-subnet1.id
  route_table_id = aws_route_table.bankapp-eks-route-table.id
}

resource "aws_route_table_association" "bankapp-eks-route-table-association2" {
  subnet_id      = aws_subnet.eks-bankapp-public-subnet2.id
  route_table_id = aws_route_table.bankapp-eks-route-table.id
}