resource "google_compute_firewall" "allow-http-ssh" {
  name = "allow-http-ssh"
  network = "default"
  allow {
    protocol = "tcp"
    ports = ["80", "22"]

  }

  target_tags = ["ssh-tag", "http-tag"]
}