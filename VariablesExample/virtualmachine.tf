provider "google" {
  credentials = file("../account.json")
  project     = "terraform-gcp-328318"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}
resource "google_compute_instance" "myvm" {
  name         = "my-second-vm"
  machine_type = var.machinetype
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {

    }
  }

}
  