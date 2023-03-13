variable "resource_name" {
  type = string
  default = "value"
}

variable "is_enabled" {
  type = bool
  default = false
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
  default = [ {
    grok_parser = [ {
      grok = {
        match_rules = ""
        support_rules = ""
      }
      samples = [ "" ]
      source = ""
    } ]
  } ]
}

variable "filters" {
  type = list(object({
    query = string
    
  }))
  default = [ {
    query = ""
  } ]
}