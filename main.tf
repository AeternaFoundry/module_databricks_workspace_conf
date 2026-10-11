resource "databricks_workspace_conf" "workspace_confs" {
  for_each = var.workspace_confs

  custom_config = each.value.custom_config

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

