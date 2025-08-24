module "gke" {
  source  = "../../modules/gke"
  name    = var.name
  project = var.project
  region  = var.region
}

output "gke_cluster_name" { value = module.gke.cluster_name }
