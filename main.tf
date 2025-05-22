provider "google" {
  project     = var.project
  credentials = "credentials.json"
  region      = var.region
  zone        = var.zone
}

module "instance-osaka" {
  source = "./modules/instance"

  instance_name       = "instance-tpot-osaka"
  image               = var.image
  machine_type        = var.machine_type
  project             = "your-project-id" # Replace with your project ID
  region              = "asia-northeast2"
  zone                = "b"
  subnet              = "default"
  disk_type           = "pd-standard"
  size                = 50
  enable_display      = false
  service_account_email = var.service_account_email
  service_account_scopes = var.scopes
  tags                = var.tags
  startup_script      = var.startup_script

  labels = {
    goog-ec-src = "vm_add-tf"
  }
}

module "instance-tokyo" {
  source = "./modules/instance"

  instance_name       = "instance-tpot-tokyo"
  image               = var.image
  machine_type        = var.machine_type
  project             = "your-project-id" # Replace with your project ID
  region              = "asia-northeast1"
  zone                = "b"
  subnet              = "default"
  disk_type           = "pd-standard"
  size                = 50
  enable_display      = false
  service_account_email = var.service_account_email
  service_account_scopes = var.scopes
  tags                = var.tags
  startup_script      = var.startup_script

  labels = {
    goog-ec-src = "vm_add-tf"
  }
}

module "instance-seoul" {
  source = "./modules/instance"

  instance_name       = "instance-tpotce-seoul"
  image               = var.image
  machine_type        = var.machine_type
  project             = "your-project-id" # Replace with your project ID
  region              = "asia-northeast3"
  zone                = "b"
  subnet              = "default"
  disk_type           = "pd-standard"
  size                = 50
  enable_display      = false
  service_account_email = var.service_account_email
  service_account_scopes = var.scopes
  tags                = var.tags
  startup_script      = var.startup_script

  labels = {
    goog-ec-src = "vm_add-tf"
  }
}

module "instance-taipei" {
  source = "./modules/instance"

  instance_name       = "instance-tpotce-taipei"
  image               = var.image
  machine_type        = var.machine_type
  project             = "your-project-id" # Replace with your project ID
  region              = "asia-east1"
  zone                = "b"
  subnet              = "default"
  disk_type           = "pd-standard"
  size                = 50
  enable_display      = false
  service_account_email = var.service_account_email
  service_account_scopes = var.scopes
  tags                = var.tags
  startup_script      = var.startup_script

  labels = {
    goog-ec-src = "vm_add-tf"
  }
}
