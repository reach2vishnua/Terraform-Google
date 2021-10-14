provider "google" {
  credentials = file("../account.json")
  project     = var.project
  zone        = var.zone
  region      = var.region
}
resource "google_compute_instance" "mydevvm" {
  name         = "dev-vm"
  machine_type = "f1-micro"
  count        = var.istest == true ? 1 : 0
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

resource "google_compute_instance" "myprodvm" {
  name         = "prod-vm"
  machine_type = "e2-standard-4"
  count        = var.istest == false ? 1 : 0
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