variable "machine-type" {
  default = "n1-standard-1"
  description = ""
}

variable "image" {
  default = "centos-cloud/centos-7"
  description = ""
}

variable "name-count" {
  default = ["server1", "server2", "server3"]
}
