# VPC output
output "vpc_id" {
    description ="VPC ID"
    value = aws_vpc.eks_vpc.id
}

# Public Subnet ID
output "public_subnet_ids" {
    description = "Public Subnet IDs"
    value = aws_subnet.public[*].id
}

# Private Subnet ID
output "private_subnet_ids" {
    description = "Private Subnet IDs"
    value = aws_subnet.private[*].id
}