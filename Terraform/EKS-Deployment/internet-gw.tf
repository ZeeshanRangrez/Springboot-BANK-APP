# Creating Internet Gateway
resource "aws_internet_gateway" "bankapp-eks-igw" {
  vpc_id = aws_vpc.bankapp-eks-vpc.id

  tags = {
    Name = "bankapp-eks-igw"
  }
}