resource "google_compute_instance" "default" {
  boot_disk {
    auto_delete = true
    device_name = var.instance_name

    initialize_params {
      image = var.image
      size  = var.size
      type  = var.disk_type
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = var.enable_display

  labels = merge({
    goog-ec-src = "vm_add-tf"
  }, var.labels)

  machine_type = var.machine_type
  name         = var.instance_name

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "${var.project}/${var.region}/subnetworks/${var.subnet}"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  tags = var.tags

  metadata = {
    startup-script = var.startup_script
  }
  zone = "${var.region}-${var.zone}"
}

resource "google_compute_firewall" "allow_all_ingress" {
  name    = "${var.instance_name}-allow-all-ingress"
  network = "${var.project}/global/networks/default"
  project = var.project

  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  allow {
    protocol = "icmp"
  }

  target_tags = var.tags
  source_ranges = ["0.0.0.0/0"]
}
