module "eks" {
  source    = "../../modules/eks"
  name      = var.name
  region    = var.region
  role_arn  = var.role_arn
  subnet_ids = var.subnet_ids
}

output "eks_cluster_name" { value = module.eks.cluster_name }
