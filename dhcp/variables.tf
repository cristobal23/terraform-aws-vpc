# Input Variables

## Resource Tags
variable "stack_item_label" {
  type        = "string"
  description = "Short form identifier for this stack. This value is used to create the 'Name' resource tag for resources created by this stack item, and also serves as a unique key for re-use."
}

variable "stack_item_fullname" {
  type        = "string"
  description = "Long form descriptive name for this stack item. This value is used to create the 'application' resource tag for resources created by this stack item."
}

## VPC parameters
variable "vpc_id" {
  type        = "string"
  description = "The ID of the VPC"
}

## DHCP parameters
variable "domain_name" {
  type        = "string"
  description = "The suffix domain name to use by default when resolving non Fully Qualified Domain Names"
  default     = "service.consul"
}

variable "name_servers" {
  type        = "string"
  description = "List of name servers to configure in '/etc/resolv.conf'"
  default     = "127.0.0.1,10.10.0.2,10.10.1.2"
}

variable "ntp_servers" {
  type        = "string"
  description = "List of NTP servers to configure"
  default     = "127.0.0.1"
}

variable "netbios_name_servers" {
  type        = "string"
  description = "List of NETBIOS name servers"
  default     = "127.0.0.1"
}

variable "netbios_node_type" {
  type        = "string"
  description = "The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network."
  default     = 2
}
