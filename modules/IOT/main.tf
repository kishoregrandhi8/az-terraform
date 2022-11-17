resource "azurerm_iothub" "iothub" {
  name                     = var.iot_name
  location                 = var.location
  resource_group_name      = var.rg-name
  sku {
    name     = "S1"
    capacity = "1"
  }
}