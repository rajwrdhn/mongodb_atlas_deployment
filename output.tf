output "project_id" {
  description = "The ID of the MongoDB Atlas project."
  value       = mongodbatlas_project.example.id
}

output "cluster_name" {
  description = "The name of the MongoDB Atlas cluster."
  value       = mongodbatlas_cluster.example.name
}

output "cluster_state_name" {
  description = "The current state of the MongoDB Atlas cluster (e.g., IDLE, CREATING, UPDATING)."
  value       = mongodbatlas_cluster.example.state_name
}

output "connection_strings_standard_srv" {
  description = "The standard SRV connection string to connect to the cluster."
  value       = mongodbatlas_cluster.example.connection_strings[0].standard_srv
}

output "mongo_uri" {
  description = "The standard connection string URI (non-SRV)."
  value       = mongodbatlas_cluster.example.connection_strings[0].standard
}

output "database_version" {
  description = "The version of MongoDB running on the cluster."
  value       = mongodbatlas_cluster.example.mongo_db_major_version
}
