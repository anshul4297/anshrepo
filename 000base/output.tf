output "vnet_exports" {
  description = "Export everything about the VNET"
  value       = module.vnet_connectivity.exports_vnet
}

output "subnet_exports" {
  description = "Export everything about the subnet"
  value       = module.vnet_connectivity.exports_subnet
}
