resource "azurerm_resource_group" "vnet_rg" {
  name = var.name
  location = var.location
  tags = var.tags

  lifecycle {
    ignore_changes = [ 
      tags["creation-date"],
      tags["update-date"]
    ]
  }
}