provider "google" {
  credentials = file("<YOUR_GCP_CREDENTIALS_JSON_FILE>.json")
  project     = "<YOUR_PROJECT_ID>"
  region      = "us-central1"
}

resource "google_storage_bucket" "bucket" {
  name          = "dhbfvdffhv"
  location      = "US"
  storage_class = "STANDARD"

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}
