output "machine-type" {
  value = google_compute_instance.myfirstcompute.*.machine_type
}

output "name" {
  value = google_compute_instance.myfirstcompute.*.name
}

output "zone-name" {
  value = google_compute_instance.myfirstcompute.*.zone
}

output "instance_id" {
  value = join(",",google_compute_instance.myfirstcompute.*.id)
}

