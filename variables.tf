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
  default = "northamerica-northeast1-a"
}

variable "image" {
  type = string
  description = "The image to use for the instances."
  default = "projects/debian-cloud/global/images/debian-11-bullseye-v20240213"
}


variable "scopes" {
  type = list(string)
  description = "The scopes for the service account."
  default = []
}


variable "startup_script" {
  type = string
  description = "The startup script for the instances."
  default = "sudo apt-get install git -y && git clone https://github.com/shierahall302/KatyaTpot-DC && cd KatyaTpot-DC/iso/installer/ && cp tpot.conf.dist tpot.conf && sudo ./install.sh --type=auto --conf=tpot.conf"
}

variable "tags" {
  type = list(string)
  description = "The tags to apply to the instances."
  default = ["http-server", "https-server"]
}

variable "machine_type" {
  type = string
  description = "The machine type for the instances."
  default = "n2-standard-4"
}