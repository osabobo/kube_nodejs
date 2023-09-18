provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "node_app_deployment" {
  yaml_body = file("${path.module}/deployment.yaml")
}
