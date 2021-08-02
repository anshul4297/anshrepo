variable "vnet_address_spa" {
  default = "string"
}

variable "tag_buildby" {
type        = string
description = "Name of the builder."
}

variable "environment" {
  description = "Prod,QA,STG,DEV,etc."
}

variable "location" {
  description = "Azure region for the environment."
}

variable "vnet_name" {
  type        = string
  description = "name for the VNET. Naming standard is Region_Code-VNET##"
}

variable "vnet_rsg" {
  type        = string
  description = "Resource Group to create the VNET in"
}


variable "subnet_list" {}

variable "subscription_id" {
  default = ""
}

variable "tag_buildticket" {
  default = ""
}

variable "tag_builddate" {
  default = ""
}


variable "custom_tags" {
  default = ""
}
