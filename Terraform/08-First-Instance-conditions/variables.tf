variable "machine-type" {
    default = "n1-standard-2"
  }


variable "environment" {
  default = "production"

}
variable "image" {
  default = "centos-cloud/centos-7"
  description = ""
}

variable "name-count" {
  default = ["server1", "server2", "server3"]
}
