# Creating Route table

resource "aws_route_table" "bankapp-route-table" {
  vpc_id = aws_vpc.bankapp-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.bankapp-igw.id
  }

  tags = {
    Name = "bankapp-route-table"
  }
}

# Route table association

resource "aws_route_table_association" "bankapp-route-table-association" {
  subnet_id      = aws_subnet.bankapp-public-subnet.id
  route_table_id = aws_route_table.bankapp-route-table.id
}