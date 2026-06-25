output "resource_group_name" {
  description = "Created Resource Group name."
  value       = azurerm_resource_group.this.name
}

output "resource_group_location" {
  description = "Created Resource Group location."
  value       = azurerm_resource_group.this.location
}

output "resource_group_id" {
  description = "Created Resource Group resource ID."
  value       = azurerm_resource_group.this.id
}
