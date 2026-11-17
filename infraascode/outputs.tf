###############################################################################
# Outputs
###############################################################################

output "tenant_id" {
  description = "Azure tenant ID."
  value       = data.azapi_client_config.current.tenant_id
}

output "intermediate_root_management_group_id" {
  description = "Resource ID of the intermediate root management group. Intended as the parent for downstream workload/connectivity stacks."
  value       = azapi_resource.intermediate_root_mg.id
}

output "intermediate_root_management_group_name" {
  description = "Name of the intermediate root management group. This name (not the ID) must be passed to `parent_resource_id` of other avm-ptn-alz instances."
  value       = azapi_resource.intermediate_root_mg.name
}

output "alz_architecture_outputs" {
  description = "Outputs from the avm-ptn-alz module (policy assignment and role definition mappings)."
  value       = module.alz_architecture
  sensitive   = true
}