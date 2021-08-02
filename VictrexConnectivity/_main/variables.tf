variable "environment" {
description = "Production, Development, etc"
}

variable "tag_buildby" {
description = "Racker that built the resource."
}

variable "location" {
  description = "Region to deploy into."
}

variable "rsgNet" {
  description = "Name of the Resource Group to create in."
}

variable "rsgPatch" {
  description = "Name of the Resource Group to create in."
}

variable "rsgStoaccount" {
  description = "Name of the Resource Group to create in."
}

variable "account_kind" {
  description = "Kind of account. Either Storage, StorageV2, BlobStorage, or FileStorage."
  default     = "StorageV2"
}

variable "account_tier" {
  description = "Performance tier. Either Standard or Premium."
  default     = "Standard"
}


variable "subscription_id" {
  default = ""
}

variable "azure_acc_name" {
  default = ""
}
