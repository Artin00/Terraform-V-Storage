resource "azurerm_virtual_network" "VNET1" { # Creating a virtual network
  name                = "ak-my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.DataCohortLab.location
  resource_group_name = data.azurerm_resource_group.DataCohortLab.name
}

resource "azurerm_subnet" "Subnet1" { # Subnet 1 is being created for the network rules
  name                 = "subnet1"
  resource_group_name  = data.azurerm_resource_group.DataCohortLab.name
  virtual_network_name = azurerm_virtual_network.VNET1.name
  address_prefixes     = ["10.0.1.0/26"]
}

resource "azurerm_subnet" "Subnet2" { # Subnet 2 is being created for the network rules
  name                 = "subnet2"
  resource_group_name  = data.azurerm_resource_group.DataCohortLab.name
  virtual_network_name = azurerm_virtual_network.VNET1.name
  address_prefixes     = ["10.0.2.0/26"]
}
