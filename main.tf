data "azurerm_resource_group" "rg" {
  name = "mykgrg"
}



module "function-app" {
  source = "./modules/az-fn"

  rg-name = data.azurerm_resource_group.rg.name
  location = data.azurerm_resource_group.rg.location
  fn_storage_account_name = var.fn_storage_account_name
  fn_app_service_plan_name = var.fn_app_service_plan_name
  function_app_name = var.function_app_name
}

module "azureIOT" {
  source = "./modules/IOT"
  
  iot_name                   = "omni-iot"
  rg-name                    = data.azurerm_resource_group.rg.name
  location                   = data.azurerm_resource_group.rg.location
  
} 

