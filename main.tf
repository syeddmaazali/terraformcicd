
#create a resoucre group 
resource "azurerm_resource_group" "test" {
    location = var.location
    name = var.resource_group_name

    tags = {
      "environment" = "prod"
    }
  
}
resource "azurerm_network_ddos_protection_plan" "ddos" {
  name = var.ddos_name
  location = var.location
  resource_group_name = azurerm_resource_group.test.name

  
  
}


#create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet" {
    resource_group_name = azurerm_resource_group.test.name
    name = var.azurerm_virtual_network
    location = var.location
    
    address_space = [ "10.100.0.0/16" ]

    ddos_protection_plan {
      id = azurerm_network_ddos_protection_plan.ddos.id
      enable = false
      
    }

    subnet {
        name= "frontend"
        address_prefix  = "10.100.1.0/24"
    }
     subnet {
        name= "backend"
        address_prefix  = "10.100.2.0/24"
    }
      subnet {
        name= "app_layer"
        address_prefix  = "10.100.3.0/24"
    }
  
}
