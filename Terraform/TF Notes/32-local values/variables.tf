variable "machine-type" {
  default = "n1-standard-1"
  description = ""
}

variable "image" {
  default = "centos-cloud/centos-7"
  description = ""
}

variable "instance-name" {
  type = list(string)
  default = ["dev-instance", "stage-instance", "prod-instance"]
}