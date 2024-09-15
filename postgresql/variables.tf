variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for PostgreSQL"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for PostgreSQL networking"
  type        = string
}
