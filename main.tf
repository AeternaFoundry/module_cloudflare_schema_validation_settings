resource "cloudflare_schema_validation_settings" "schema_validation_settings" {
  for_each = var.schema_validation_settings

  validation_default_mitigation_action  = each.value.validation_default_mitigation_action
  zone_id                               = each.value.zone_id
  validation_override_mitigation_action = each.value.validation_override_mitigation_action
}

