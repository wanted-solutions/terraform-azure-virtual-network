// Here you can add you local variables
locals {
  module_metadata = {}

  // Virtual Network
  local_peerings = [
    for peering in var.virtual_network_peerings : peering if peering.type != "global"
  ]

  global_peerings = [
    for peering in var.virtual_network_peerings : peering if peering.type == "global"
  ]
}