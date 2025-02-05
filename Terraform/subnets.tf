# Creating Subnets

resource "aws_subnet" "bankapp-public-subnet" {
  vpc_id     = aws_vpc.bankapp-vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = var.bankapp-vpc-public-subnet
  }
}