terraform {
  backend "gcs" {
    bucket      = "starlit-road-terraform-gcp-backend"
    credentials = "/Users/jacobmarlow/Documents/DataAnalytics/credentials/starlit-road/terraform.json"
  }
}