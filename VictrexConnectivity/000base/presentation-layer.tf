provider "azurerm" {
  version = "2.64.0"
  features {}

  /* This checks the deployment environment */
  subscription_id = var.subscription_id
}

####################
##  Remote State  ##
####################
terraform {
  # use terraform 0.12
  required_version = ">= 0.12"
  backend "azurerm" {
    storage_account_name = "rackspace7c970e60"
    container_name       = "terraform"
    key                  = "000Base.terraform.tfstate"
    resource_group_name  = "rsg-uks-conn-net-prod"
  }
}

data "terraform_remote_state" "remote_state_base" {
  backend = "azurerm"

  config = {
    storage_account_name = "rackspace7c970e60"
    container_name       = "terraform"
    key                  = "base.terraform.tfstate"
    resource_group_name  = "rsg-uks-conn-net-prod"
  }
}
