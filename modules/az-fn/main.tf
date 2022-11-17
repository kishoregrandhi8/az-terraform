resource "azurerm_storage_account" "fn_storage_account" {
  name                     = var.fn_storage_account_name
  location                 = var.location
  resource_group_name      = var.rg-name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_app_service_plan" "fn_app_service_plan" {
  name                = var.fn_app_service_plan_name
  location            = var.location
  resource_group_name = var.rg-name
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "fn_app" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = var.rg-name
  app_service_plan_id        = azurerm_app_service_plan.fn_app_service_plan.id
  storage_account_name       = azurerm_storage_account.fn_storage_account.name
  storage_account_access_key = azurerm_storage_account.fn_storage_account.primary_access_key

}