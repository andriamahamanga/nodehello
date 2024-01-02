resource "google_container_registry" "registry" {
  project  = project=vibrant-petal-406618
  location = "us-central1"
}

resource "google_cloudbuild_trigger" "react-trigger" {
  github {
    owner = "andriamahamanga"
    name  = "my-repos"
    push {
      branch = "main"
      //or
      //tag    = "production"
    }
  }
  filename      = "terraform/cloudbuild.yaml"
  ignored_files = [".gitignore", "terraform/*"]
  # build {
  #   step {
  #     name       = "node"
  #     entrypoint = "npm"
  #     args       = ["install"]
  #   }
  # }
}