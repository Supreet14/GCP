resource "google_project_iam_custom_role" "service" {
  role_id     = "service"
  title       = "Access"
  permissions = [
    "storage.objects.get",
    "storage.objects.list",
    "storage.buckets.get",
  ]
}
resource "google_project_iam_member" "example_member" {
  project = var.p_id
  role        = google_project_iam_custom_role.service.name
  member      = "serviceAccount:443269190583@cloudbuild.gserviceaccount.com"
}
