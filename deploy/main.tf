provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "null_resource" "apply_k8s_manifest" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/deployment.yaml"
  }
}




