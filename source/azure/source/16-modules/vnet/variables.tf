variable "resource_group_name" {
  type        = string
  description = "value of the resource group name"
}

variable "vnet_name" {
  type        = string
  description = "value of the vnet name"
  default     = "terraformvnet"
}

variable "address_space" {
  type        = list(string)
  description = "value of the address space"
  default     = ["10.0.0.0/16"]

}

variable "subnet_prefixes" {
  type        = list(string)
  description = "value of the subnet prefixes"
  default     = ["10.0.1.0/24"]

}

variable "subnet_names" {
  type        = list(string)
  description = "value of the subnet names"
  default     = ["subnet1", "subnet2"]

}

