variable "external_network_name" {
  type        = string
  description = "External network name used for floating IP allocation"
}

variable "flavor_name" {
  type        = string
  description = "OpenStack flavor used by proxy jump instance"
}

variable "image_id" {
  type        = string
  description = "OpenStack image ID used by proxy jump instance"
}

variable "key_pair" {
  type        = string
  description = "OpenStack keypair name used by proxy jump instance"
}

variable "network_id" {
  type        = string
  description = "Id of OpenStack internal network used by proxy jump instance"
}

variable "security_group" {
  type        = string
  description = "OpenStack proxy jump security group"
}
