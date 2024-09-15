provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Invoke the network module
module "network" {
  source   = "./network"
  rg_name  = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}

# Invoke the PostgreSQL module
module "postgresql" {
  source    = "./postgresql"
  rg_name   = azurerm_resource_group.rg.name
  location  = azurerm_resource_group.rg.location
  subnet_id = module.network.subnet_id
}

# Invoke the App Service module
module "app_service" {
  source                     = "./app_service"
  rg_name                    = azurerm_resource_group.rg.name
  location                   = azurerm_resource_group.rg.location
  postgres_connection_string = module.postgresql.connection_string
  web_app_name               = "example-webapp"
}

output "app_service_url" {
  value = module.app_service.app_service_url
}
