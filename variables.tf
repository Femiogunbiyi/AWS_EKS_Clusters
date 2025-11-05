variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidr" {
  description = "public subnet CIDR block"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "private subnet CIDR block"
  type        = list(string)
}

variable "region" {
  description = "AWS region"
  type        = string
}


variable "cluster_version" {
  description = "My cluster version"
  type        = string
}

variable "node_groups" {
  description = "EKS node group configuration variable"

  type = map(
    object({
      instance_type = list(string)
      capacity_type = string

      scaling_config = object({
        desired_size = number
        max_size     = number
        min_size     = number
      })
    })
  )
}

variable "availabilty_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Name of EKS cluster"
  type        = string
}