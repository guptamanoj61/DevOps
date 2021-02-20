variable "path" {default = "C:/Users/gupta/Documents/PROJECTS-Pycharm/Terraform/credentials/secrets.json"}

provider "google" {
  project = "festive-canto-302603"
  region = "asia-southeast1-a"
  credentials =  file(var.path)


  }