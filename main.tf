data "aws_pricing_product" "pricing_product_lookup" {
  for_each = var.pricing_product_lookup

  service_code = each.value.service_code

  dynamic "filters" {
    for_each = each.value.filters
    content {
      field = filters.value.field
      value = filters.value.value
    }
  }
}

