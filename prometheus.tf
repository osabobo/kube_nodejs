provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"

}

resource "helm_release" "prometheus" {
  name       = ""kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  namespace  = "default"
  version    = " "
  wait       = true
  

  set {
    name  = "service.type"
    value = "NodePort"
  }
}

