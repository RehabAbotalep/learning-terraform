variable "resource_group_name" {
  type        = string
  description = "The resource group name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "Resource location in Azure"
}

variable "log_analytics_name" {
  type        = string
  description = "The Log Analytics workspace name in Azure"
}

variable "aca-environment" {
  type        = string
  description = "The Azure Container App environment name in Azure"
}

variable "aca_name" {
  type        = string
  description = "The Azure Container App name in Azure"
}


