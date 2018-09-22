// Configure the Google Cloud provider
provider "google" {
# credentials = "${file("account.json")}"
  project     = "my-gce-project-id"
  region      = "us-central1"
}

// Create a new instance
resource "google_compute_instance" "default" {
  name = "terraform-test-1"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"

  tags = ["Darwin Corp", "Sales"]
  
  boot_disk {
    initialize_params {
        image = "ubuntu-1804-lts"
    }
 }
   
  network_interface {
    network = "default"
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}   
