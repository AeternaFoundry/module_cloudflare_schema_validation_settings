variable "schema_validation_settings" {
  description = <<EOT
Map of schema_validation_settings, attributes below
Required:
    - validation_default_mitigation_action
    - zone_id
Optional:
    - validation_override_mitigation_action
EOT

  type = map(object({
    validation_default_mitigation_action  = string
    zone_id                               = string
    validation_override_mitigation_action = optional(string)
  }))
}

