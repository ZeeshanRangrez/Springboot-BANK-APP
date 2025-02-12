# Creating VPC 

resource "aws_vpc" "bankapp-eks-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_nat_gateway = true
  tags = {
    Name = "BankApp-EKS-VPC"
  }
}
