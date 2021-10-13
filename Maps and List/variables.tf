variable "project" {
  default = "terraform-gcp-328318"
}
variable "region" {
  default = "asia-south1"
}
variable "zone" {
  default = "asia-south-1a"
}
variable "types" {
    type = map
    default = {
        ap-south1-a = "f1-micro"
        ap-south1-b = "e2-standard-2"
        ap-south1-c = "e2-standard-4"
    }
  }
  variable "list" {
      type = list
      default = ["f1-micro","e2-standard-2","e2-standard-4"]
         
  }