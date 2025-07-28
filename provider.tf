terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "sumit"         # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    storage_account_name = "sumit12345"     # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "sumit12345"     # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "amit.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
    

}

provider "azurerm" {
  features { }
  subscription_id = "f5c092a3-a10b-4952-9791-a66c5de6792b"
}