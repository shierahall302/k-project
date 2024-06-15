
provider "google" {
  project = "certain-gearbox-277406"
  credentials = "credentials.json"
  region  = "asia-northeast1"
}

resource "google_compute_instance" "instance-tpotce-osaka" {
  boot_disk {
    auto_delete = true
    device_name = "instance-tpotce-osaka"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20240213"
      size  = 100
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = "n2-standard-4"

  metadata = {
    startup-script = "sudo apt-get install git -y && git clone https://github.com/shierahall302/KatyaTpot-DC && cd KatyaTpot-DC/iso/installer/ && cp tpot.conf.dist tpot.conf && sudo ./install.sh --type=auto --conf=tpot.conf"
  }

  name = "instance-tpot-osaka"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/certain-gearbox-277406/regions/asia-northeast2/subnetworks/default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "121459572322-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  tags = ["http-server", "https-server"]
  zone = "asia-northeast2-b"
}


resource "google_compute_instance" "instance-tpotce-tokyo" {
  boot_disk {
    auto_delete = true
    device_name = "instance-tpotce-tokyo"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20240213"
      size  = 100
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = "n2-standard-4"

  metadata = {
    startup-script = "sudo apt-get install git -y && git clone https://github.com/shierahall302/KatyaTpot-DC && cd KatyaTpot-DC/iso/installer/ && cp tpot.conf.dist tpot.conf && sudo ./install.sh --type=auto --conf=tpot.conf"
  }

  name = "instance-tpot-tokyo"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/certain-gearbox-277406/regions/asia-northeast1/subnetworks/default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "121459572322-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  tags = ["http-server", "https-server"]
  zone = "asia-northeast1-b"
}


resource "google_compute_instance" "instance-tpotce-seoul" {
  boot_disk {
    auto_delete = true
    device_name = "instance-tpotce-seoul"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20240213"
      size  = 100
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = "n2-standard-4"

  metadata = {
    startup-script = "sudo apt-get install git -y && git clone https://github.com/shierahall302/KatyaTpot-DC && cd KatyaTpot-DC/iso/installer/ && cp tpot.conf.dist tpot.conf && sudo ./install.sh --type=auto --conf=tpot.conf"
  }

  name = "instance-tpotce-seoul"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/certain-gearbox-277406/regions/asia-northeast3/subnetworks/default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "121459572322-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  tags = ["http-server", "https-server"]
  zone = "asia-northeast3-b"
}

resource "google_compute_instance" "instance-tpotce-taipei" {
  boot_disk {
    auto_delete = true
    device_name = "instance-tpotce-1"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20240213"
      size  = 100
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = "n2-standard-4"

  metadata = {
    startup-script = "sudo apt-get install git -y && git clone https://github.com/shierahall302/KatyaTpot-DC && cd KatyaTpot-DC/iso/installer/ && cp tpot.conf.dist tpot.conf && sudo ./install.sh --type=auto --conf=tpot.conf"
  }

  name = "instance-tpotce-taipei"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/certain-gearbox-277406/regions/asia-east1/subnetworks/default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "121459572322-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  tags = ["http-server", "https-server"]
  zone = "asia-east1-b"
}
