# versions.tf

terraform {
  required_providers {
    kind = {
      # source  = "kyma-incubator/kind"
      # version = "0.0.11"
      source = "justenwalker/kind"
      version = "0.17.0"
    }
    
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.16.1"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.7.1"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
  }

  required_version = ">= 1.2.0"
}