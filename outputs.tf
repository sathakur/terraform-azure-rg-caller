output "resource_group_name" {
  description = "Created Resource Group name."
  value       = module.resource_group.resource_group_name
}

output "resource_group_location" {
  description = "Created Resource Group location."
  value       = module.resource_group.resource_group_location
}

output "resource_group_id" {
  description = "Created Resource Group resource ID."
  value       = module.resource_group.resource_group_id
}
