provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "node_app" {
  metadata {
    name = "node-app-deployment"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "node-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "node-app"
        }
      }

      spec {
        container {
          image = "your-dockerhub-username/node-app:latest"
          name  = "node-app"
          port {
            container_port = 3000
          }
        }
      }
    }
  }
}
