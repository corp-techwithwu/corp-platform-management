###############################################################################
# Terraform & Provider Requirements
###############################################################################

terraform {
  required_version = "~> 1.17"

  backend "azurerm" {
    use_oidc = true
  }

  required_providers {
    alz = {
      source  = "Azure/alz"
      version = "~> 0.22.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.13"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }

    time = {
      source  = "hashicorp/time"
      version = "~> 0.9"
    }
  }
}
