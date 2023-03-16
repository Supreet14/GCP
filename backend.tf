terraform {
  backend "gcs" {
    bucket  = "landing-zone-su142"
    prefix  = "terraform/state"
  }
}
