variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "resource_group_location" {
  type        = string
  description = "The resource group location"
}

variable "app_service_plan_name" {
  type        = string
  description = "The service plan name"
}

variable "app_service_name" {
  type        = string
  description = "The app service name"
}

variable "sql_server_name" {
  type        = string
  description = "The SQl Sever name"

}

variable "sql_admin_login" {
  type        = string
  description = "The SQL server admin login"
}

variable "sql_admin_password" {
  type        = string
  description = "The SQL server admin password"
}

variable "sql_database_name" {
  type        = string
  description = "The SQL Database name"
}