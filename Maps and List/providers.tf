provider "google" {
    credentials = file("../account.json")
    zone = var.zone
    project = var.project
    region = var.region  
}