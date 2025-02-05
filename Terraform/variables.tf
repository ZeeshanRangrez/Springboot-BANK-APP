variable "vpc-name" {
  type    = string
  default = "bankapp-vpc"
}

variable "bankapp-vpc-public-subnet" {
  type    = string
  default = "bankapp-vpc-public-subnet"
}

variable "bankapp-igw" {
  type    = string
  default = "bankapp-igw"
}