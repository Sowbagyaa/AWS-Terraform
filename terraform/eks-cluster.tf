module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = ">20.35.0"
    cluster_name = "poc-eks-cluster"
    cluster_version = "1.33.2"

    cluster_endpoint_public_access  = true

    vpc_id = module.myapp-vpc.vpc_id
    subnet_ids = module.myapp-vpc.private_subnets

    tags = {
        environment = "poc"
        application = "poc_containerised"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 1
            max_size = 3
            desired_size = 2

            instance_types = ["t3.micro"]
        }
    }
}
