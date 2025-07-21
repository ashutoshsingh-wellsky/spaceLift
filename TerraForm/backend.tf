terraform {
  backend "gcs" {
    bucket  = "hhh-attachments-store-dev-8898"                      # <-- Use your actual bucket name
    prefix  = "spacelift/temp-bucket"                # <-- Path within bucket
    project = "temp-ksaj9na8-wsky"                   # <-- Your GCP project ID
    location = "US-CENTRAL1"
  }
}
