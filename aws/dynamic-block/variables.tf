variable "sg_name" {
  type        = string
  description = "Security Group Name"
}

variable "sg_ports" {
  type        = list(number)
  description = "List of ingress ports"
}