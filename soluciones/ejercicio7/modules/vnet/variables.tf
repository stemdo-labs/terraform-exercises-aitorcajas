variable "existent_resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
  validation {
    condition     = length(var.vnet_name) > 0 && var.vnet_name != null && can(regex("^vnet[a-z]{3,}tfexercise[0-9]{2,}$", var.vnet_name))
    error_message = "La variable vnet_name está vacía o es nula o no sigue la sintaxis que debería"
  }
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
  description = "Describe el propietario de la VNet."
  validation {
    condition     = length(var.owner_tag) > 0 && var.owner_tag != null
    error_message = "La variable owner_tag está vacía o es nula."
  }
}

variable "environment_tag" {
  type        = string
  description = "Describe el entorno de la VNet (dev, test, prod, etc)."
  validation {
    condition     = length(var.environment_tag) > 0 && var.environment_tag != null && contains(["DEV", "PRO", "TES", "PRE"], upper(var.environment_tag))
    error_message = "La variable environment_tag está vacía o es nula."
  }
}

variable "vnet_tags" {
  type = map(string)
  default = {

  }
  description = "Describe los tags adicionales que se aplicarán a la VNet."
  validation {
    condition     = var.vnet_tags != null && alltrue([for i in values(var.vnet_tags) : i != null && length(i) > 0])
    error_message = "El mapeado no puede ser nulo, ni los valores de él mismo, aparte los valores no pueden estar vacíos."
  }
}

variable "subnets" {
  type = number
}
variable "name_nsg" {
  type = string
}