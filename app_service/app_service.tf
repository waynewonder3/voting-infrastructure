resource "azurerm_service_plan" "app_service_plan" {
  name                = "example"
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}


resource "azurerm_linux_web_app" "app_service" {
  name                = "example"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {}
}
