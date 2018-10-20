provider "google" {
#  credentials = "${file("creds2.json")}"
  project     = "kube-farm-216603"
}

resource "google_container_cluster" "primary" {
  name               = "kubernetes-cluster-1"
  zone               = "us-central1-a"
  initial_node_count = 1

  additional_zones = [
    "us-central1-b",
    "us-central1-c",
  ]

  master_auth {
    username = "admin" #change before deploy
    password = "TH1S1SnotARE@LPASSWORDD"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      name = "kubernetes-cluster-1"
      number = "1"
    }

    tags = ["kubernetes-cluster-1", "kubernetes", "infrastructure"]
  }
}

# The following outputs allow authentication and connectivity to the GKE Cluster.
output "client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}
