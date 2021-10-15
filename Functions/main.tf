provider "google" {
  credentials = file("../account.json")
  region      = var.region
  project     = var.project
}

resource "google_compute_instance" "myvm" {
  name         = var.name[count.index]
  machine_type = lookup(var.machinetype, var.zone[count.index])
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