
### CONDITION ? TRUE : FALSE
resource "google_compute_instance" "myfirstcompute" {
  count = length(var.name-count)
  name = "test-${count.index+1}"
  machine_type = var.environment == "production" ? var.machine-type : var.machine-type["prod"]
  zone = "asia-southeast1-a"
  can_ip_forward = "false"
  tags = ["ssh-tag", "http-tag"]

  boot_disk {
    initialize_params {
      image = var.image
      size = "20"
    }
  }

  network_interface {
    network = "default"
  }
  labels = {
    name = "test-${count.index+1}"
    machine_type = var.environment == "production" ? var.machine-type : var.machine-type["prod"]

  }

  metadata = {
    size = "10"
    foo = "bar"
  }

  metadata_startup_script = "echo 'Hi Manoj' > ~/hello.txt"
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}

