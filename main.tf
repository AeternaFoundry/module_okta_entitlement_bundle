resource "okta_entitlement_bundle" "entitlement_bundles" {
  for_each = var.entitlement_bundles

  name                = each.value.name
  description         = each.value.description
  status              = each.value.status
  target_resource_orn = each.value.target_resource_orn

  dynamic "entitlements" {
    for_each = each.value.entitlements != null ? each.value.entitlements : []
    content {
      id = entitlements.value.id
      dynamic "values" {
        for_each = entitlements.value.values != null ? entitlements.value.values : []
        content {
          id = values.value.id
        }
      }
    }
  }

  dynamic "target" {
    for_each = each.value.target != null ? each.value.target : []
    content {
      external_id = target.value.external_id
      type        = target.value.type
    }
  }
}

