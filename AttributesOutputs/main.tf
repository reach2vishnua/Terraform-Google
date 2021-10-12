provider "google" {
  credentials = file("../account.json")
  project     = "terraform-gcp-328318"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}

resource "google_compute_address" "Static-ip" {
  name = "my-ipv4-address"
}

output "External-IP" {
  value = google_compute_address.Static-ip.address
}

resource "google_storage_bucket" "mybucket" {
  name     = "my-vishnu-nani"
  location = "ASIA-SOUTH1"
}
output "Bucket-URL" {
  value = google_storage_bucket.mybucket.url
}