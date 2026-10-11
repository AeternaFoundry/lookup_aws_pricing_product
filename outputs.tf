output "pricing_product_lookup_id" {
  description = "Map of id values across all pricing_product_lookup, keyed the same as var.pricing_product_lookup"
  value       = { for k, v in data.aws_pricing_product.pricing_product_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pricing_product_lookup_filters" {
  description = "Map of filters values across all pricing_product_lookup, keyed the same as var.pricing_product_lookup"
  value       = { for k, v in data.aws_pricing_product.pricing_product_lookup : k => v.filters if v.filters != null && length(v.filters) > 0 }
}
output "pricing_product_lookup_result" {
  description = "Map of result values across all pricing_product_lookup, keyed the same as var.pricing_product_lookup"
  value       = { for k, v in data.aws_pricing_product.pricing_product_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "pricing_product_lookup_service_code" {
  description = "Map of service_code values across all pricing_product_lookup, keyed the same as var.pricing_product_lookup"
  value       = { for k, v in data.aws_pricing_product.pricing_product_lookup : k => v.service_code if v.service_code != null && length(v.service_code) > 0 }
}

