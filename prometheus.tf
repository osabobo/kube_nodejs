provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  chart      = "prometheus-community/kube-prometheus-stack"
  version    = "13.5.0"
  namespace  = "default"
  wait       = true
  timeout    = 15

  set {
    name  = "service.type"
    value = "NodePort"
  }
}
