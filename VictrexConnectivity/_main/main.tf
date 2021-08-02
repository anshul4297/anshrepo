provider "azurerm" {
  version = "2.0.0"
  features {}

  /* This checks the deployment environment */
  subscription_id = var.subscription_id
}

# use terraform 0.12
terraform {
  required_version = ">= 0.12"
}

resource "random_id" "storage" {
  byte_length = 4
}


#create storage account for Terraform state
resource "azurerm_storage_account" "terraform" {
  name                     = "rackspace${lower(random_id.storage.hex)}"
  resource_group_name      = var.rsgStoaccount
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraform" {
  name = "terraform"
  # not needed ?
  storage_account_name = azurerm_storage_account.terraform.name
}



terraform {

  backend "azurerm" {
    storage_account_name = "rackspace7c970e60"  # update this value after you create this storage account
    container_name       = "terraform"
    key                  = "base.terraform.tfstate"
    resource_group_name  = "rsg-uks-conn-stoacc-prod"   #variable cannot be used in here

   }
}

# Azure automation account

resource "azurerm_automation_account" "aut-uks-01" {
  name                = var.azure_acc_name
  location            = azurerm_resource_group.rsgPatch.location
  resource_group_name = azurerm_resource_group.rsgPatch.name

  sku_name = "Basic"

  tags = {
    environment = "Production"
  }
}


resource "azurerm_resource_group" "rsgNet" {
  name     = var.rsgNet
  location = "West Europe"
}

resource "azurerm_resource_group" "rsgPatch" {
  name     = var.rsgPatch
  location = "West Europe"
}

resource "azurerm_resource_group" "rsgStoaccount" {
  name     = var.rsgStoaccount
  location = "West Europe"
}
