variable "machine-type" {
  default = "n1-standard-1"
  description = ""
}

variable "image" {
  default = "centos-cloud/centos-7"
  description = ""
}

variable "reserve-address" {
  type = list(string)

  default = ["10.148.0.63", "10.148.0.64", "10.148.0.65" ]
}

