variable "resource_group_name" {
  type        = string
  description = "Resouce Group Name"
}

variable "resource_group_location" {
  type        = string
  description = "Resouce Group Location"
}

variable "storage_account_name" {
  type        = string
  description = "Storage Account Name"
}

variable "storage_account_replication_types" {
  type = map(any)
  default = {
    dev  = "LRS",
    prod = "GRS"
  }
}

variable "acr_name" {
  type        = string
  description = "Resouce Group Location"
}

variable "keyvault_name" {
  type        = string
  description = "Key Vault Name"
}

variable "app_service_plan_name" {
  type        = string
  description = "Service plan name"
}

variable "app_service_name" {
  type        = string
  description = "App service name"
}

variable "app_service_sku_types" {
  type = map(any)
  default = {
    dev  = "S1",
    prod = "P1v2"
  }
}

variable "sql_server_name" {
  type        = string
  description = "SQl Sever name"

}

variable "sql_admin_login" {
  type        = string
  description = "SQL server admin login"
}

variable "sql_admin_password" {
  type        = string
  description = "SQL server admin password"
}

variable "sql_database_name" {
  type        = string
  description = "SQL Database Name"
}

variable "eventhub_namespace_name" {
  type        = string
  description = "Event Hub namespace Name"
}

variable "eventhub_name" {
  type        = string
  description = "Event Hub Name"
}

variable "service_bus_name" {
  type        = string
  description = "Service Bus Name"
}