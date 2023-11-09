variable "resource_group_name" {
  type        = string
  description = "The resource group name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "Resource location in Azure"
}

variable "keyvault_name" {
  type        = string
  description = "Key Vault name in Azure"
}

variable "secret_name" {
  type        = string
  description = "Key Vault secret name in Azure"
}

variable "secret_value" {
  type        = string
  description = "Key Vault secret value in Azure"
}
