module "vnet_connectivity" {
  source = "git@github.com:/global-azure/terraform-azurerm-vnet.git"

  vnet_rsg           = var.vnet_rsg
  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_spa
  subnet_list        = var.subnet_list


  tag_buildby     = var.tag_buildby
   tag_buildticket = var.tag_buildticket
   tag_builddate   = var.tag_builddate
   location        = var.location
   environment     = var.environment
   tag_custom      = var.custom_tags

 }
