variable "location" {
  description = "The Azure Region in which all resources groups should be created."
}

variable "rg-name" {
  description = "The name of the resource group"
}

variable "fn_storage_account_name" {
  description = "The name of the storage account name"
}

variable "fn_app_service_plan_name" {
  description = "The name of the function app service plan"
}

variable "function_app_name" {
  description = "The name of the function app"
}