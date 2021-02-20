resource "google_compute_address" "static" {
  name = "ipv4-address"
  address_type = "INTERNAL"
  subnetwork = "https://www.googleapis.com/compute/v1/projects/festive-canto-302603/regions/asia-southeast1/subnetworks/default"
  #address = var.reserve-address[3]
}


resource "google_compute_instance" "instance_with_ip" {
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
    network_ip =  var.reserve-address[0]
}

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}




