output "workspace_confs_id" {
  description = "Map of id values across all workspace_confs, keyed the same as var.workspace_confs except keys with no id are omitted"
  value       = { for k, v in databricks_workspace_conf.workspace_confs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspace_confs_custom_config" {
  description = "Map of custom_config values across all workspace_confs, keyed the same as var.workspace_confs except keys with no custom_config are omitted"
  value       = { for k, v in databricks_workspace_conf.workspace_confs : k => v.custom_config if v.custom_config != null && length(v.custom_config) > 0 }
}
output "workspace_confs_provider_config" {
  description = "Map of provider_config values across all workspace_confs, keyed the same as var.workspace_confs except keys with no provider_config are omitted"
  value       = { for k, v in databricks_workspace_conf.workspace_confs : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

