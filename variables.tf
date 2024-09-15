variable "subscription_id" {
  description = "The subscription ID for the Azure account."
  type        = string
}

# variable "client_id" {
#   description = "The client ID for the Azure Service Principal."
#   type        = string
# }

# variable "client_secret" {
#   description = "The client secret for the Azure Service Principal."
#   type        = string
#   sensitive   = true
# }

# variable "tenant_id" {
#   description = "The tenant ID for the Azure account."
#   type        = string
# }

variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "nodejs-app-rg"
}

variable "location" {
  description = "Azure region to deploy resources"
  default     = "East US"
}
