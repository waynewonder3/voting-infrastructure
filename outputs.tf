output "postgresql_connection_string" {
  value = module.postgresql.connection_string
  sensitive = true
}

output "subnet_id" {
  value = module.network.subnet_id
}
