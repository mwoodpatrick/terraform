# kind_cluster.tf

# https://registry.terraform.io/providers/justenwalker/kind/0.17.0
# https://github.com/justenwalker/terraform-provider-kind/blob/main/docs/index.md
# https://github.com/justenwalker/terraform-provider-kind/blob/main/docs/resources/cluster.md
provider "kind" {
  provider   = "docker"
  # kubeconfig = pathexpand("~/.kube/kind-config")
  kubeconfig = pathexpand(var.kind_cluster_config_path)
}

provider "kubernetes" {
  config_path = pathexpand(var.kind_cluster_config_path)
}

resource "kind_cluster" "default" {
  #(String) the name of the cluster. corresponds to the --name flag on the kind cli
  name = var.kind_cluster_name
  #  (String) the cluster config as documented on https://kind.sigs.k8s.io/docs/user/configuration/
  config = <<-EOF
        apiVersion: kind.x-k8s.io/v1alpha4
        kind: Cluster
        nodes:
        - role: control-plane
        - role: worker
        - role: worker
	EOF
}