# condition ? true_val : false_val [ If condition matches true_val else false_val ]

resource "google_compute_instance" "dev-vm" {
  name = "dev-vm"
  machine_type = var.machine-type["dev"]
  zone = "asia-southeast1-a"
  #count = var.istest == true ? 1 : 0 #If the condition is true the 1 instance of dev

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


resource "google_compute_instance" "prod-vm" {
  name = "prod-vm"
  machine_type = var.machine-type["prod"]
  zone = "asia-southeast1-a"
  #count = var.istest == false  ? 2 : 0 # If condition is false then 1 instance of prod

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