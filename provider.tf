# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = var.p_id
  region  = var.region
}
