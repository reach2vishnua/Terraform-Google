provider "google" {
  credentials = file("../account.json")
  project     = var.project
  region      = var.region
}

resource "google_compute_instance" "myvm" {
  name         = var.name[count.index]
  machine_type = "f1-micro"
  zone         = var.zone[count.index]
  count        = 3
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