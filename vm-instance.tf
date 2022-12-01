resource "google_compute_instance" "terraform-vm-instance" {
  name         = "terraform-vm-instance"
  machine_type = "e2-medium"
  tags         = ["terraform-vm-instance"]
  zone         = "us-west4-c"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  
  network_interface {
    subnetwork = "${google_compute_subnetwork.subnet.name}"
    access_config {
    }
  }
}