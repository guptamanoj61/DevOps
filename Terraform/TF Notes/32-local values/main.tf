# tags defined once and use in many places

resource "google_compute_instance" "instance" {
  name = "test"
  machine_type = var.machine-type
  zone = "asia-southeast1-a"
  tags = local.common_tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}

