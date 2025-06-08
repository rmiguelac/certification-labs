locals {
  rg_name  = "lab-rg"
  location = "eastus"

  tags = {
    tf-created    = true,
    creation-date = timestamp()
    update-date   = timestamp()
  }
}

module "rg" {
  source = "../../../../terraform/modules/azure/resource-group"

  name     = local.rg_name
  location = local.location
  tags     = local.tags
}

module "vnet" {
  source = "../../../../terraform/modules/azure/virtual-network"

  resource_group_name = local.rg_name
  name                = "CoreServicesVnet"
  address_space       = ["10.20.0.0/16"]
  location            = "eastus"
  subnets = [
    {
      name = "GatewaySubnet"
      cidr = "10.20.0.0/27"
    },
    {
      name = "SharedServicesSubnet"
      cidr = "10.20.10.0/24"
    },
    {
      name = "DatabaseSubnet"
      cidr = "10.20.20.0/24"
    },
    {
      name = "PublicWebServiceSubnet"
      cidr = "10.20.30.0/24"
    }
  ]

  tags = local.tags
}
