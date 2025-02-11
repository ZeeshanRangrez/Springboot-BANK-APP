module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "bankapp-eks-cluster"
  cluster_version = "1.29"


  subnet_ids = [aws_subnet.eks-bankapp-public-subnet1.id, aws_subnet.eks-bankapp-public-subnet2.id]
  vpc_id     = aws_vpc.bankapp-eks-vpc.id

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size   = 2
      max_size       = 3
      min_size       = 1
      disk_size       = 20
      instance_types = ["t2.medium"]
    }
  }

  tags = {
    Name = "eks-bankapp-cluster"
  }
} 