variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "The location/region where the virtual network will be created"
  type        = string
}

variable "address_spaces" {
  description = "The address spaces that will be used by the virtual network"
  type        = list(string)
}

variable "subnets" {
  description = "The subnets that will be used by the virtual network"
  type = list(object({
    name              = string
    address_prefix    = string
    security_group_id = optional(string)
  }))
  default = []
}

variable "dns_servers" {
  description = "The DNS servers that will be used by the virtual network"
  type        = list(string)
  default     = []
}

variable "bgp_community" {
  description = "The BGP community associated with the virtual network"
  type        = string
  default     = ""
}

variable "edge_zone" {
  description = "The edge zone associated with the virtual network"
  type        = string
  default     = ""
}

variable "flow_timeout_in_minutes" {
  description = "The flow timeout in minutes"
  type        = number
  default     = 30
}