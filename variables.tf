variable "pricing_product_lookup" {
  description = <<EOT
Map of pricing_product_lookup, attributes below
Required:
    - service_code
    - filters (block):
        - field (required)
        - value (required)
EOT

  type = map(object({
    service_code = string
    filters = list(object({
      field = string
      value = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.pricing_product_lookup : (
        length(v.filters) >= 1
      )
    ])
    error_message = "Each filters list must contain at least 1 items"
  }
}

