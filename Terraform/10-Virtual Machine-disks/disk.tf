resource "google_compute_disk" "default" {
  name = "test-disk"
  type = "pd-ssd"
  size = "10"
  #count = "2"
  zone = "asia-southeast1-a"
}


resource "google_compute_attached_disk" "default" {
  # disk = "${google_compute_disk.default}"  ------> Convert to HCL2 expression below
  disk = google_compute_disk.default.self_link
  # instance = "${google_compute_disk.default}"  ---> Convert to HCL2 expression below
  instance = google_compute_instance.myfirstcompute[0].self_link
}