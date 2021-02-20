variable "bucket-name" {
  default = "tfbucket9650"
}

variable "mylocation" {
  default = "asia-southeast1"
}

resource "google_storage_bucket" "tfbucket" {
  name = var.bucket-name
  count = "1"
  location = "${var.mylocation}"
  storage_class = "REGIONAL"

  labels = {
    name = var.bucket-name
    location = "${var.mylocation}"
  }

  versioning {
    enabled = false
  }
}