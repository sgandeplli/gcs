provider "google" {
  project = "saitejaameda"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "terrabucket1_jenkins"
  location = "US"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
