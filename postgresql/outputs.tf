output "connection_string" {
  value = "postgresql://${azurerm_postgresql_server.postgresql_server.administrator_login}:${azurerm_postgresql_server.postgresql_server.administrator_login_password}@${azurerm_postgresql_server.postgresql_server.fqdn}:5432/${azurerm_postgresql_database.postgresql_database.name}?sslmode=require"
}