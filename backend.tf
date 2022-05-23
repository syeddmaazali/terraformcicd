terraform {
    backend "azurerm" {
        resource_group_name = "abc_prod_rg"
        storage_account_name = "demoterraform11"
        container_name = "terraform"
        key = "FSgwzg8Awe5c5UiApx0KpCFCnKQVJy09UAz50iWRnr5mTbIyrqMxWZ20HDSOuCYbOmKLJVNXRhuX6XNkGcS+Fw=="
        
        
      
    }
  
}