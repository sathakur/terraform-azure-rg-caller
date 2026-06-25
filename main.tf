terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  # Update this source URL if your GitHub owner/repo name is different.
  source = "git::https://github.com/sathakur/terraform-azure-rg-module.git?ref=main"

  # These two values must come from StackGuardian Dev Portal inputs.
  resource_group_name = var.resource_group_name
  location            = var.location

  tags = {
    CreatedBy   = "StackGuardian"
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
  }
}
