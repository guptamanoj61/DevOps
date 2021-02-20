resource "google_compute_instance" "myfirstcompute" {
  machine_type = "n1-standard-1"
  name         = "test"
  zone         = "asia-southeast1-a"
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = "default"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}

