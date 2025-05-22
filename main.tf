provider "google" {
  project     = var.project
  credentials = "credentials.json"
  region      = var.region
}

module "instance-osaka" {
  source = "./modules/instance"

  device_name         = "instance-tpotce-osaka"
  image               = var.image
  instance_name       = "instance-tpot-osaka"
  subnetwork          = "projects/${var.project}/regions/asia-northeast2/subnetworks/default"
  service_account_email = var.service_account_email
  scopes              = var.scopes
  startup_script      = var.startup_script
  tags                = var.tags
  zone                = "asia-northeast2-b"
  machine_type        = var.machine_type
}

module "instance-tokyo" {
  source = "./modules/instance"

  device_name         = "instance-tpotce-tokyo"
  image               = var.image
  instance_name       = "instance-tpot-tokyo"
  subnetwork          = "projects/${var.project}/regions/asia-northeast1/subnetworks/default"
  service_account_email = var.service_account_email
  scopes              = var.scopes
  startup_script      = var.startup_script
  tags                = var.tags
  zone                = "asia-northeast1-b"
  machine_type        = var.machine_type
}

module "instance-seoul" {
  source = "./modules/instance"

  device_name         = "instance-tpotce-seoul"
  image               = var.image
  instance_name       = "instance-tpotce-seoul"
  subnetwork          = "projects/${var.project}/regions/asia-northeast3/subnetworks/default"
  service_account_email = var.service_account_email
  scopes              = var.scopes
  startup_script      = var.startup_script
  tags                = var.tags
  zone                = "asia-northeast3-b"
  machine_type        = var.machine_type
}

module "instance-taipei" {
  source = "./modules/instance"

  device_name         = "instance-tpotce-1"
  image               = var.image
  instance_name       = "instance-tpotce-taipei"
  subnetwork          = "projects/${var.project}/regions/asia-east1/subnetworks/default"
  service_account_email = var.service_account_email
  scopes              = var.scopes
  startup_script      = var.startup_script
  tags                = var.tags
  zone                = "asia-east1-b"
  machine_type        = var.machine_type
}
