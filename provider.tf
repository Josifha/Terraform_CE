# Specify the provider (GCP, AWS, Azure)
provider "google" {
  region      = "${var.region}"
}
