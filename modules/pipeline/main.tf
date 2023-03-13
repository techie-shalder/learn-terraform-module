resource "datadog_logs_custom_pipeline" "logs_custom_pipeline" {
      is_enabled = "${var.is_enabled}"
      name = "${var.resource_name}"
      
      dynamic "filter" {
            for_each = var.filters
            content {
                  query = filter.value.query
            }

      }
      
      dynamic "processor" {
            for_each = var.processors
            content {
                  dynamic "grok_parser"{
                        for_each = processor.value.grok_parser
                        content{
                              grok {
                                match_rules = grok_parser.value.grok.match_rules
                                support_rules = grok_parser.value.grok.support_rules                                   
                              }
                              source = grok_parser.value.source
                              samples = grok_parser.value.samples
                        }
                  }
                  
            }

      }
}