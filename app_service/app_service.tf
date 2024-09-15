resource "azurerm_service_plan" "app_service_plan" {
  name                = "example"
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "random_pet" "name" {
  length    = 2
  separator = "-"
}

resource "azurerm_linux_web_app" "app_service" {
  name                = "${var.web_app_name}-${random_pet.name.id}"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {}

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }
}
