variable "project" {
  type = string
  description = "The project ID."
  default = "certain-gearbox-277406"
}

variable "region" {
  type = string
  description = "The region to deploy the instances in."
  default = "northamerica-northeast1"
}

variable "subnet" {
  type = string
  description = "The subnet to use for the instances."
  default = "default"
}

variable "service_account_email" {
  type = string
  description = "The email of the service account."
  default = "121459572322-compute@developer.gserviceaccount.com"
}

variable "service_account_scopes" {
  type = list(string)
  description = "The scopes of the service account."
  default = [
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append"
  ]
}

variable "zone" {
  type = string
  description = "The zone to deploy the instances in."
  default = "a"
}

variable "image" {
  type = string
  description = "The image to use for the instances."
}

variable "scopes" {
  type = list(string)
  description = "The scopes for the service account."
}

variable "startup_script" {
  type = string
  description = "The startup script for the instances."
  default = ""
}

variable "tags" {
  type = list(string)
  description = "The tags to apply to the instances."
  default = ["http-server", "https-server"]
}

variable "machine_type" {
  type = string
  description = "The machine type for the instances."
}