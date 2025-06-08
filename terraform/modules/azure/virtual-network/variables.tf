variable "resource_group_name" {
  description = "Resource group in which the vnet will be created"
  type        = string
}

variable "location" {
  description = "VNet region"
  type        = string
}

variable "name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address Space for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "List of subnets to be created in the vnet"
  type = list(
    object({
      name = string
      cidr = string
    })
  )
}

variable "tags" {
  description = "Tags for the resource"
  type        = map(string)
}
