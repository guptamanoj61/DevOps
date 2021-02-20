variable "machine-type" {
  type = "map"
  default = {
    "dev" = "n1-standard-1"
    "prod" = "n1-standard-2"
  }
}

variable "image" {
  default = "centos-cloud/centos-7"
  description = ""
}

variable "name-count" {
  default = ["server1", "server2", "server3"]
}
