resource "google_compute_instance" "myvm" {
    name = "my-vm-instance"
    machine_type = var.list[2]

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