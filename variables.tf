variable "instanceName" {
  type        = string
  description = "Name of the instance we are creating."
}

variable "accessKey" {
  type        = string
  description = "Access Key for IAM user."
}

variable "secretKey" {
  type        = string
  description = "Secret Access key for IAM user."
}

variable "region" {
  type        = string
  description = "Region in which instance is to be created"
}

variable "amazonImage" {
  type        = string
  description = "Amazon Machine Image (AMI) of the server."
}

variable "instanceType" {
  type        = string
  description = "Type of Instance."
}

variable "keyName" {
  type        = string
  description = "KeyPair Name created for this instance only."
}

# variable "commands" {
#   type        = list(string)
#   description = "Coomands run during instance creation."
# }

variable "connectionType" {
  type        = string
  description = "Type of connection."
}

variable "connectionUser" {
  type        = string
  description = "Name of the user of the server (ec2-user/ubuntu)."
}

variable "privateKey" {
  type        = string
  description = "Private Key to build connection."
}


