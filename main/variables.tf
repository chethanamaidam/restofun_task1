variable  "rg_name" {
    description= "the azure region where the resource group shoul exist "
    default= "demo-exercise-rg"
}
variable  "location" {
    default= "uksouth"
}
variable "tags" {
    description = "Tags for the resources"
    type        = map(string)
    default = {
           "environment" = "dev"
           "source" = "terraform"
        
    }
}
variable "st_name"{
    
    default= "chedemostorage"
}
variable "asp_name"{
    default = "demo-asp-name"
}
variable "fun_name"{
    default = "demofun"
}
variable "storage_account_access_key"{
  default= "demofun"
}