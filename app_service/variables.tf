variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for App Service"
  type        = string
}

variable "postgres_connection_string" {
  description = "PostgreSQL connection string"
  type        = string
}
