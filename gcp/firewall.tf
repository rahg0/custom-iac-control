provider "google" {
  project     = "raghu-test-1"
  region      = "us-central1"
}

resource "google_compute_firewall" "good_firewall"  {
  name    = "good-firewall" 
  network = var.network
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = ["1.1.1.1/32"]
}

resource "google_compute_firewall" "bad_firewall"  {
  name    = "bad-firewall" 
  network = var.network
  allow {
    protocol = "tcp"
  }
  source_ranges = ["0.0.0.0/0"]
}
