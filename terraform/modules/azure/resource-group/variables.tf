variable "name" {
  description = "Resource group in which the vnet will be created"
  type = string
}

variable "location" {
  description = "Resource Group location"
  type = string
}

variable "tags" {
  description = "Tags for the resource"
  type = map(string)
}