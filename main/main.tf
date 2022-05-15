provider "azurerm" {
    features {}
}
module "resource_group" {
  source = "../modules/rg"
  rg_name = var.rg_name
  location = var.location
  tags = var.tags
}

module "storage_account" {
  source             = "../modules/st"
  depends_on         = [module.resource_group]
  rg_name = var.rg_name
  location = var.location
  tags = var.tags
} 
module "app_service_plan"{
  source = "../modules/asp"
  depends_on = [module.resource_group]
  rg_name = var.rg_name
  location = var.location
  asp_name= var.asp_name

}

module "function_app" {
    source = "../modules/fun"
    depends_on = [module.storage_account]
    rg_name = var.rg_name
    location = var.location
    asp_name= var.asp_name
    }

    

    