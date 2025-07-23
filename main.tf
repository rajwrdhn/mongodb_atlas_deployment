provider "mongodbatlas" {
  public_key  = var.public_key
  private_key = var.private_key
}

resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = var.org_id
}

resource "mongodbatlas_cluster" "cluster" {
  project_id = mongodbatlas_project.cluster.id
  name       = var.cluster_name
  provider_name = "AWS"
  num_shards    = 0
  replication_specs {
    num_shards = 0
    regions_config {
      region_name     = "EU_CENTRAL_1"
      priority        = 0
      electable_nodes = 0
      read_only_nodes = 0
      analytics_nodes = 0
    }
  }
  provider_instance_size_name = "M0"
}
