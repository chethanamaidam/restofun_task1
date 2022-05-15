resource "azurerm_function_app" "rg" {
  name                       = var.fun-name 
  location                   = var.location
  resource_group_name        = var.rg_name.name
  app_service_plan_id        = var.app_service_plan.id
  storage_account_name       = var.storage_name
  storage_account_access_key = var.storage_account_access_key
}


