module "instance-testbed-windows" {
  source = "./modules/instance"

  instance_name = "instance-testbed-windows"
  image         = "projects/windows-cloud/global/images/windows-server-2022-dc-v20240516"
  size          = 100
  disk_type     = "pd-balanced"
  enable_display = true
  labels = {
    goog-ops-agent-policy = "v2-x86-template-1-2-0"
  }
  machine_type         = "n2-standard-4"
  project              = var.project
  region               = var.region
  subnet               = var.subnet
  service_account_email  = var.service_account_email
  service_account_scopes = var.service_account_scopes
  tags                 = ["http-server", "https-server"]
  zone                 = var.zone
}

module "instance-webserv-one" {
  source = "./modules/instance"

  instance_name = "instance-webserv-one"
  image         = "projects/debian-cloud/global/images/debian-12-bookworm-v20240611"
  size          = 10
  disk_type     = "pd-balanced"
  enable_display = false
  machine_type = "e2-medium"
  project              = var.project
  region               = var.region
  subnet               = var.subnet
  service_account_email  = var.service_account_email
  service_account_scopes = var.service_account_scopes
  tags                 = ["http-server", "https-server"]
  zone                 = var.zone
}
