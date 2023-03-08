# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  credentials = "${file("service.json")}"
  project = var.p_id
  region  = var.region
}
