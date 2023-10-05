variable "cidr" {
  type        = string
#   default     = "10.0.0.0/16"
  description = "This is cidr block for vpc"
}

variable "ami_id" {
  type        = string
  default     = "ami-0fc5d935ebf8bc3bc"
  description = "description"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "description"
}

variable "sub_pub_cidr_list" {
  type        = list(any)
}

variable "sub_priv_cidr_list" {
  type        = list(any)
}

variable "region" {
  type        = string
}

variable "azs" {
  type        = list(any)
}

# variable subnet_map {
#   type        = list(map)
# }
