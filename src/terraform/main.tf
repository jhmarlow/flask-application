terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.49.0"
    }
  }
}

provider "google" {

  credentials = file("/Users/jacobmarlow/Documents/DataAnalytics/credentials/starlit-road-284109-af152246625b.json")

  project = "starlit-road-284109"
  region  = "europe-west2"
  zone    = "europe-west1-b"
}

module "gcs" {
  source="./modules/gcs/"
}

resource "google_app_engine_application" "app" {
  location_id = "europe-west2"
}