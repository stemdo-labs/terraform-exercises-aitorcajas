variable "existent_resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "owner_tag" {
  type        = string
}

variable "environment_tag" {
  type        = string
}

variable "vnet_tags" {
  type = map(string)
  default = {

  }
}

variable "subnets" {
  description = "Inserta el número de subnets que quieras crear"
  type = number
}

variable "name_nsg" {
  type = string
}