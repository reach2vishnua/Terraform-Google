variable "region" {
  default = "us-central1"
}
variable "project" {
  default = "terraform-gcp-328318"
}
variable "zone" {
  type    = list(any)
  default = ["us-central1-a", "us-central1-b", "us-central1-c"]
}
variable "machinetype" {
  type = map(any)
  default = {
    "us-central1-a" = "f1-micro"
    "us-central1-b" = "e2-standard-2"
    "us-central1-c" = "e2-standard-4"
  }
}
variable "name" {
  type    = list(any)
  default = ["dev-vm", "test-vm", "prod-vm"]
}