resource "google_compute_firewall" "terraform-firewall" {
  name    = "terraform-firewall"
  network = google_compute_network.net.name
  source_tags = ["web"]
  target_tags = ["terraform-vm-instance"]
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  allow {
    protocol = "tcp"
    ports = ["22"]
    
  }
}
