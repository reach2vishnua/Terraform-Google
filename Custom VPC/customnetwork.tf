provider "google" {
  credentials = file("../account.json")
  project     = "terraform-gcp-328318"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}

resource "google_compute_network" "custon" {
  project                 = "terraform-gcp-328318"
  name                    = "my-first-vpc"
  auto_create_subnetworks = true
  mtu                     = 1460
}

resource "google_compute_firewall" "rules" {
  name    = "my-firewall-rule"
  network = google_compute_network.custon.name
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080"]
  }
}