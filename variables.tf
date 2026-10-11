variable "workspace_confs" {
  description = <<EOT
Map of workspace_confs, attributes below
Optional:
    - custom_config
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    custom_config = optional(map(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

