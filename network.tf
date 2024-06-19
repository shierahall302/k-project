# Configure the Google Cloud Provider

# Define the first VPC
resource "google_compute_network" "vpc_1" {
  name                    = "vpc-prod"
  auto_create_subnetworks = false
  project                 = "certain-gearbox-277406"
}

# Define the second VPC
resource "google_compute_network" "vpc_2" {
  name                    = "vpc-corp"
  auto_create_subnetworks = false
  project                 = "certain-gearbox-277406"
}

# Create a subnet for the first VPC
resource "google_compute_subnetwork" "subnet_1" {
  name          = "subnet-1"
  ip_cidr_range = "10.128.0.0/20"
  region        = "northamerica-northeast1"
  network       = google_compute_network.vpc_1.id
  project       = "certain-gearbox-277406"
}

# Create a subnet for the second VPC
resource "google_compute_subnetwork" "subnet_2" {
  name          = "subnet-2"
  ip_cidr_range = "10.144.0.0/20"
  region        = "northamerica-northeast1"
  network       = google_compute_network.vpc_2.id
  project       = "certain-gearbox-277406"
}
