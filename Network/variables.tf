variable "cidr_net_module" {
  type        = string
#   default     = "10.0.0.0/16"
  description = "This is cidr block for vpc"
}

variable "sub_pub_cidr_list_net_module" {
  type        = list(any)
}

variable "sub_priv_cidr_list_net_module" {
  type        = list(any)
}

variable "azs_net_module" {
  type        = list(any)
}
