output "cluster_endpoint" {
    description = "EKS Cluster endpoint"
    value = aws_eks_cluster.main-eks-cluster.endpoint
}


