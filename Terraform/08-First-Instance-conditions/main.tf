
### CONDITION ? TRUE : FALSE
resource "google_compute_instance" "myfirstcompute" {
  count = length(var.name-count)
  name = "test-${count.index+1}"
  machine_type = var.environment == "production" ? var.machine-type : var.machine-type["prod"]
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

