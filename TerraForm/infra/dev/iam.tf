# IAM Permissions for Service Accounts

# First, grant the service account IAM admin permissions (this needs to be done manually first)
# You need to manually run this command once:
# gcloud projects add-iam-policy-binding temp-ksaj9na8-wsky \
#   --member="serviceAccount:hhh-gcp-service@temp-ksaj9na8-wsky.iam.gserviceaccount.com" \
#   --role="roles/resourcemanager.projectIamAdmin"

# Grant Storage Admin role to the service account for this project
resource "google_project_iam_member" "storage_admin" {
  project = "temp-ksaj9na8-wsky"
  role    = "roles/storage.admin"
  member  = "serviceAccount:hhh-gcp-service@temp-ksaj9na8-wsky.iam.gserviceaccount.com"
}
