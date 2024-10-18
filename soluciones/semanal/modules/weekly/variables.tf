variable "rg_name" {
  type = string
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "nsg_name" {
  type = string
}

variable "public_ip_name" {
  type = string
}

variable "vm_count" {
  type = number
  default = 2
}

variable "ni_name" {
  type = string
}

variable "lb_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "username" {
  type = string
  default = "acajas"
}

variable "password" {
  type = string
  default = "Password3_"
}