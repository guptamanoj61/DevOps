variable "machine-type" {
  type = map(string)
  default = {
    "dev" = "n1-standard-1"
    "prod" = "n1-standard-2"
  }
}

variable "image" {
  default = "centos-cloud/centos-7"
  description = ""
}


variable "istest" {
  default = ""
}
/*
variable "instance-name" {
  type = "list"
  default = ["dev-instance", "stage-instance", "prod-instance"]
}
*/