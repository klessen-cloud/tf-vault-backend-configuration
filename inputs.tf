variable "environment" {
  default     = ""
  type        = string
  description = "this is the environment that vault resources are build for"
}

variable "component" {
  default     = ""
  type        = string
  description = "this is the component we are building vault-policies for"
}

variable "db_user" {
  default = "db_user"
  type = string
  description = "the default username for a component"
}

variable "db_password" {
  default = ""
  type = string
  description = "the default password for a components username"
}

variable "endpoint_policies" {
  default = []
  type = list(string)
  description = "the default endpoint policies for a component"
}

variable "endpoint_password" {
  default = ""
  type = string
  description = "the default password for a component"
}
