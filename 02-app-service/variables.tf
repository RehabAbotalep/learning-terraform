variable "resource_group_name" {
  default     = "AppServiceRG"
  type        = string
  description = "The resource group name"

}

variable "resource_group_location" {
  default     = "West Europe"
  type        = string
  description = "The resource group loaction"
}

variable "app_service_plan_name" {
  default     = "example-appserviceplan"
  type        = string
  description = "The app service paln name"
}

variable "app_service_name" {
  default     = "terraform-webapp-lab-01"
  type        = string
  description = "The app service name"
}