# Count - When you would like to spin up more than one instances. But, not more than one instance can have yhe same name so we use count.index
# count.index - The distinct index number ( starting with 0 )corresponding to this instances.

resource "google_compute_instance" "instance-1" {
   name = "test-${count.index+1}"  #-> Take a name from here as test-1, test-2...
 # name = var.instance-name[count.index] # -> Take a more specific name from a list
  machine_type = var.machine-type
  zone = "asia-southeast1-a"
  count = "3"


  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}

/*
C:\Users\gupta\Documents\PROJECTS-Pycharm\Terraform>gcloud compute instances list
NAME            ZONE               MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP  STATUS
dev-instance    asia-southeast1-a  n1-standard-1               10.148.0.53               RUNNING
prod-instance   asia-southeast1-a  n1-standard-1               10.148.0.52               RUNNING
stage-instance  asia-southeast1-a  n1-standard-1               10.148.0.54               RUNNING

C:\Users\gupta\Documents\PROJECTS-Pycharm\Terraform>

C:\Users\gupta\Documents\PROJECTS-Pycharm\Terraform>gcloud compute instances list
NAME    ZONE               MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP  STATUS
test-1  asia-southeast1-a  n1-standard-1               10.148.0.56               RUNNING
test-2  asia-southeast1-a  n1-standard-1               10.148.0.55               RUNNING
test-3  asia-southeast1-a  n1-standard-1               10.148.0.57               RUNNING


*/