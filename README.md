# This AWS EKS with Terraform project involves using Infrastructure-as-Code (IaC) to provision a highly available, scalable, and secure Kubernetes cluster on AWS. 

## Modules: Reusable modules (e.g., for VPC, IAM, EKS cluster) promote standardization and reduce code duplication. 

Typical Architecture
A typical AWS EKS project deployed with Terraform includes these main components: 

VPC and Networking: A dedicated Virtual Private Cloud (VPC) with public and private subnets across multiple Availability Zones (AZs) for high availability. This includes NAT gateways (in public subnets) for outbound internet access from private nodes, and an internet gateway.

EKS Control Plane: The managed Kubernetes control plane provided by AWS, which runs in an AWS-managed VPC and is automatically distributed across AZs. It is exposed via an API server endpoint.

Worker Nodes: EC2 instances (either managed node groups or self-managed) running in your private subnets that register with the EKS control plane and run your containerized workloads.

IAM Roles and Policies: Specific IAM roles for the EKS cluster and worker nodes to grant necessary permissions to interact with other AWS services (e.g., EC2, ECR, S3, CloudWatch).

Add-ons and Services: Deployment of AWS Load Balancer Controller.


1. Terraform init: Initializes the working directory, downloads necessary provider plugins (AWS), and sets up the backend for state management (e.g., using an S3 bucket for remote state).

2. Terraform plan: Creates an execution plan, showing exactly what actions Terraform will take (create, modify, destroy) to match the configuration. This allows for a review of changes before deployment.

3. Terraform apply: Executes the planned actions, provisioning the EKS cluster and all associated infrastructure on AWS.

4. Configure kubectl: After deployment, the AWS CLI is used to update the local kubeconfig file to allow kubectl to interact with the new EKS cluster's API endpoint.
