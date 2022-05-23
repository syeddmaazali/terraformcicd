terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
      
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
    subscription_id = "93e9d8f7-6fed-4b2c-88b2-110d22a957d5"
    client_id = "02ecd3b2-7846-48df-92e9-4861a6a84211"
    client_secret = "Rjv8Q~2_WLjQcsRsnoe8.Z.jW_1Kh_67aAAkxclQ"
    tenant_id = "3713354d-28e3-49c1-a1bb-715244fb396b"

  
}