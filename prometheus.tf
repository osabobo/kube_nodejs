provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  chart      = "prometheus-community/kube-prometheus-stack"
  version    = "13.5.0"
  namespace  = "monitoring"
  wait       = true
}
