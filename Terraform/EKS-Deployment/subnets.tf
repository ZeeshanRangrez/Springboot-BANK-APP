# Creating Subnets

resource "aws_subnet" "eks-bankapp-public-subnet1" {
  vpc_id                  = aws_vpc.bankapp-eks-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "eks-bankapp-public-subnet1"
  }
}

resource "aws_subnet" "eks-bankapp-public-subnet2" {
  vpc_id            = aws_vpc.bankapp-eks-vpc.id
  availability_zone = "us-east-1b"
  cidr_block        = "10.0.2.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "eks-bankapp-public-subnet2"
  }
}