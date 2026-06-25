variable "resource_group_name" {
  description = "Resource Group name entered by user from StackGuardian Dev Portal."
  type        = string

  validation {
    condition     = length(trimspace(var.resource_group_name)) >= 3 && length(trimspace(var.resource_group_name)) <= 90
    error_message = "Resource group name must be between 3 and 90 characters."
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9._()\\-]+$", var.resource_group_name))
    error_message = "Resource group name can contain letters, numbers, periods, underscores, hyphens, and parentheses only."
  }
}

variable "location" {
  description = "Azure region selected by user from StackGuardian Dev Portal."
  type        = string

  validation {
    condition = contains([
      "eastus",
      "eastus2",
      "westeurope",
      "northeurope",
      "centralindia",
      "southindia",
      "westindia"
    ], lower(var.location))

    error_message = "Allowed locations are eastus, eastus2, westeurope, northeurope, centralindia, southindia, westindia."
  }
}

variable "environment" {
  description = "Environment tag value."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "uat", "prod"], lower(var.environment))
    error_message = "Allowed environments are dev, test, uat, prod."
  }
}

variable "owner" {
  description = "Owner email or team name."
  type        = string
  default     = "cloud-team"
}

variable "cost_center" {
  description = "Cost center tag value."
  type        = string
  default     = "na"
}
