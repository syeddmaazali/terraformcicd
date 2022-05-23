variable "location" {
  default = "West Europe"
}
variable "resource_group_name" {
    type = string
    default = "abc_prod_rg"
  
}
variable "azurerm_virtual_network" {
    type = string
    default = "abc_prod_vnet"
    description = "Provide unique vnet name"

  
}
variable "ddos_name" {
    type = string
    default = "vnet_ddos"
  
}