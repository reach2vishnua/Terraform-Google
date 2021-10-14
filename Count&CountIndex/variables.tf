variable "project" {
  default = "terraform-gcp-328318"
}
variable "region" {
  default = "asia-south1"
}
variable "zone" {
  type    = list(any)
  default = ["asia-south1-a", "asia-south1-b", "asia-south1-b"]
}
variable "name" {
  type    = list(any)
  default = ["dev-vm", "test-vm", "prod-vm"]
}