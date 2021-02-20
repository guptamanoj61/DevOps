resource "google_compute_instance" "myfirstcompute" {
  name = "test"
  machine_type = var.machine-type
  zone = "asia-southeast1-a"

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

