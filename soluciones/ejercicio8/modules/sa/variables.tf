variable "name_sa" {
  type        = string
  description = "Introduce el nombre de la cuenta de almacenamiento"
}

variable "existent_resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "name_container" {
  type = string
}
