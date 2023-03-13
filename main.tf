module "datadog_logs_custom_pipeline" {
  source = "./modules/pipeline"
  resource_name = var.resource_name
  is_enabled = var.is_enabled
  processors = var.processors
  filters = var.filters
}


