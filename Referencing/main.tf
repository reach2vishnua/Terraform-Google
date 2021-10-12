provider "google" {
  credentials = file("../account.json")
  project     = "terraform-gcp-328318"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}
## Create External IP Address
resource "google_compute_address" "static" {
  name = "my-ipv4-address"

}
## Create Virtual Machine and attach the External or Static IP to VM
resource "google_compute_instance" "myvm" {
  name         = "virtual-machine-with-ip"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }
}