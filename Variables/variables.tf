variable "name" {
  default     = "my-first-vpc"
  description = "VPC Name"
}
variable "auto_create_subnetworks" {
  default     = "true"
  description = "false = creates custom VPC, true = automatically creates subnets in each region"
}
variable "project" {
  default = "terraform-gcp-328318"
}
variable "region" {
  default = "asia-south1"
}
variable "zone" {
  default = "asia-south-1a"
}