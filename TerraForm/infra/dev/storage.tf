# Google Cloud Storage Resources

# Create a GCS bucket
resource "google_storage_bucket" "test_bucket" {
  name          = "testashu-bucket-test00" # Ensure this name is globally unique
  location      = "US-CENTRAL1"
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}
