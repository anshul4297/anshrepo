vnet_address_spa = ["10.21.2.0/23"]
vnet_rsg = "rsg-uks-conn-net-prod"
vnet_name = "vnet-uks-conn-prd-01"
location = "UK South"
environment = "PRD"
subscription_id = "390c40ff-9a65-44fc-b4a2-698cdcda0ab5"
tag_buildby = "rackspace"
tag_buildticket = "xyz"
tag_builddate = "20210727"
subnet_list = [
    {
      name               = "AzureFirewallSubnet"
      address_prefixes   = ["10.21.2.0/27"]
      service_endpoints  = []
      service_delegation = ""
    },
    {
      name               = "GatewaySubnet"
      address_prefixes   = ["10.21.3.0/25"]
      service_endpoints  = []
      service_delegation = ""
    }
]

custom_tags = {
    Department  = "Connectivity"
    Application = "Connectivity"
    ServerRole = "Connectivity"
    CreationDate = "20210727"
    ManufacturingRole = "Yes"
}
