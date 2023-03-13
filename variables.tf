variable "datadog_api_key" {
  type = string
}

variable "datadog_app_key" {
  type = string
}

variable "resource_name" {
  type = string
}

variable "is_enabled" {
  type = bool
}

variable "processors" {
  type = list(object({
  grok_parser = list(object({
    grok = object({
      match_rules = string
      support_rules = string
    })
    source = string
    samples = list(string)
    }))

  }))
}

variable "filters" {
  type = list(object({
    query = string
    
  }))
}