variable "entitlement_bundles" {
  description = <<EOT
Map of entitlement_bundles, attributes below
Required:
    - name
Optional:
    - description
    - status
    - target_resource_orn
    - entitlements (block):
        - id (required)
        - values (optional, block):
            - id (required)
    - target (block):
        - external_id (required)
        - type (required)
EOT

  type = map(object({
    name                = string
    description         = optional(string)
    status              = optional(string)
    target_resource_orn = optional(string)
    entitlements = optional(list(object({
      id = string
      values = optional(list(object({
        id = string
      })))
    })))
    target = optional(list(object({
      external_id = string
      type        = string
    })))
  }))
}

