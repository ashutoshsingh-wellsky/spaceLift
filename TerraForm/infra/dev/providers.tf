# Provider configurations

# Main provider using service account
provider "google" {
  
  credentials = jsondecode(var.google_credentials)
  project     = "temp-ksaj9na8-wsky"
  region      = "us-east4"
}


# Alternative provider using user credentials for IAM operations
# Uncomment this if you want to use your user account for IAM management
# provider "google" {
#   alias   = "iam_admin"
#   project = "temp-oamhx1vs-wsky"
#   region  = "us-central1"
#   # This will use your gcloud default credentials
# }
