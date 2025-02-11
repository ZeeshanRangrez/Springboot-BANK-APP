# AWS EKS Cluster Deployment Using Terraform 

## Steps to implement:

- Set Up Terraform 
    - Install Terraform: Make sure Terraform is installed on your system.

- In the current directory you will see all the `.tf` files


- Initialize the terraform project
```bash
terraform init
```

- Validate the configuration
```bash
terraform validate
```

- Preview the infrastructure changes
```bash
terraform plan
```

- Apply the changes
```bash
terraform apply
```

- Update your kubeconfig file to connect to the EKS cluster
```bash
aws eks --region us-east-1 update-kubeconfig --name bankapp-eks-cluster
```

- Verify the cluster connection
```bash
kubectl get nodes
```