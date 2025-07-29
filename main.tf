provider "mongodbatlas" {
  public_key  = var.public_key
  private_key = var.private_key
}

resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = var.org_id
}

resource "mongodbatlas_cluster" "cluster" {
  project_id = mongodbatlas_project.project.id
  name       = var.cluster_name
  provider_name = "AWS"
  auto_scaling_disk_gb_enabled = false
  auto_scaling_compute_enabled = false
  backup_enabled = false
  provider_region_name = "EU_CENTRAL_1"
  provider_instance_size_name = "M10"
}
