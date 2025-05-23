variable "instance_name" {
  type = string
  description = "The name of the compute instance."
}

variable "image" {
  type = string
  description = "The image to use for the boot disk."
}

variable "size" {
  type = number
  description = "The size of the boot disk in GB."
}

variable "disk_type" {
  type = string
  description = "The type of the boot disk."
}

variable "enable_display" {
  type = bool
  description = "Whether to enable display."
}

variable "labels" {
  type = map(string)
  description = "Labels to apply to the instance."
  default = {}
}

variable "machine_type" {
  type = string
  description = "The machine type of the instance."
}

variable "project" {
  type = string
  description = "The project ID."
}


variable "subnet" {
  type = string
  description = "The subnet to deploy the instance in."
}

variable "service_account_email" {
  type = string
  description = "The email of the service account."
}

variable "service_account_scopes" {
  type = list(string)
  description = "The scopes of the service account."
}

variable "tags" {
  type = list(string)
  description = "Tags to apply to the instance."
}

variable "startup_script" {
  type = string
  description = "The startup script to run on the instance."
}
