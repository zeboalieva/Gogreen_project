# variable "public_subnet" {
#   type = map(object({
#     cidr_block        = string
#     availability_zone = string
#   }))
# }

# variable "private_subnet" {
#   type = map(object({
#     cidr_block        = string
#     availability_zone = string
#   }))
# }
variable "prefix" {
  type    = string
  default = "mini_project"
}

variable "security_groups" {
  description = "A map of security groups with their rules"
  type = map(object({
    description = string
    ingress_rules = optional(list(object({
      description = optional(string)
      priority    = optional(number)
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    })))
    egress_rules = list(object({
      description = optional(string)
      priority    = optional(number)
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }))
  }))
}
variable "groups" {
  type        = list(string)
  default     = []
  description = "List of group names for Terraform create, case create_groups variable be true"
}

variable "users" {
  type        = map(any)
  default     = {}
  description = "Map for Terraform create users."

}

variable "create_groups" {
  type        = bool
  default     = false
  description = "Define if Terraform will create new_groups based on variable groups ."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for all resources."
}

# variable "ec2" {
#   type = map(object({
#     subnet_name = string,
#     # cidr_block = string
#     # availability_zone = string
#   }))
#   default = {
#   }
# }
