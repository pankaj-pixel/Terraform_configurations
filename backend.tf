terraform {
  backend "azurerm" {
    resource_group_name   = "mytest-resources"   # Replace with your actual resource group name
    storage_account_name  = "terraformstoragekey"                 # Must already exist
    container_name        = "prodtfstate"                  # Must already exist in the storage account
    key                   = "prod.terraform.tfstate"   # Path to the state file in the container
  }
}
