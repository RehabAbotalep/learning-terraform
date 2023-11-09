variable "resource_group_name" {
  type        = string
  description = "The resource group name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "Resource location in Azure"
}

variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
}

variable "kubernetes_version" {
  type        = string
  description = "AKS latest version in Azure"
}

variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}

variable "node_resource_group" {
  type        = string
  description = "Resource group name for cluster resources in Azure"
}

variable "acr_name" {
  type        = string
  description = "ACR name"
}