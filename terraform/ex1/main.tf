provider "kubernetes" {
  config_path = "/Users/david/.kube/config"
}

resource "kubernetes_secret" "my-sc" {
  metadata {
    name = "my-secret"
  }
  data = {
    "username" = "david"
  }
}

