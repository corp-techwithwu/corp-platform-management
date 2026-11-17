
###############################################################################
# Locals
###############################################################################

locals {
  organization = "corp-platform"

  intermediate_root_mg_name = "mg-${local.organization}-${var.environment}-root"

  # The ALZ provider expects `parent_resource_id` to be the management
  # group NAME only.
  # Do NOT include the `/providers/Microsoft.Management/managementGroups/`
  # prefix – the module validates this and will fail.
  alz_parent_resource_id = local.intermediate_root_mg_name

  # Single source of truth for ALZ artifact region.
  # (Previously `var.location` was defined but hardcoded to "centralus".)
  alz_location = var.location

  tags = {
    Environment    = var.environment
    ManagementType = "alz"
    ManagedBy      = "terraform"
    Organization   = local.organization
  }
}