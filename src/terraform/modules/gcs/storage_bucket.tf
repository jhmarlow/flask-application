resource "google_storage_bucket" "app_bucket" {
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US"
  name                        = "app-bucket"
  project                     = "starlit-road-284109"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "false"
}