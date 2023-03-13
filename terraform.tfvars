datadog_api_key = ""
datadog_app_key = ""

resource_name = "Test1"
is_enabled = false

filters = [
  {
    query = "@log_stream.file_prefix:orderinfo domain:production-na04-underarmour.demandware.net"
  }
]

processors = [
  {
      grok_parser =  [
      {
        grok = {
            match_rules = "autoFilledRule1 [a-zA-Z: ]{0}.*\\{\\\"orderid\\\"\\:\\\"%%{notSpace:orderid}.*\\\",\\\"sessionid\\\"\\:\\\"%%{notSpace:sessionid}.*\\\",\\\"customer_info\\\"\\:\\[\\{\\\"customerid\\\"\\:\\\"%%{notSpace:customerid}{0}.*\\\",\\\"registered\\\"\\:\\\"%%{notSpace:registered}.*\\\",\\\"loyalty_flag\\\"\\:%%{notSpace:loyaltyflag:boolean}\\}\\],\\\"payment_info\\\"\\:\\[\\{\\\"payment_method\\\"\\:\\\"%%{notSpace:paymentmethod}.*\\\",\\\"card_type\\\"\\:\\\"%%{data}{0}.*\\\",\\\"error\\\"\\:%%{notSpace:ordererror},\\\"OOT\\\"\\:\\\"%%{data}{0}.*\\\",\\\"message\\\"\\:\\\"%%{data}{0}.*\\\"\\}\\],\\\"order_status\\\"\\:\\\"%%{notSpace:orderstatus}.*\\\",\\\"confirmation_status\\\"\\:\\\"%%{notSpace:confirmationstatus}.*\\\",\\\"source\\\"\\:\\\"%%{notSpace:ordersource}*\\\",\\\"site\\\"\\:\\\"%%{notSpace:orderregion}.*\\\",\\\"is_employee_order\\\"\\:%%{notSpace:employeeorder:boolean},\\\"vip_order\\\"\\:%%{notSpace:viporder:boolean},\\\"bopis_only_order\\\"\\:%%{notSpace:bopisonlyorder:boolean},\\\"mixed_bopis_order\\\"\\:%%{notSpace: mixedbopisorder:boolean}\\}"
            support_rules = ""
          }
        source = "message"
        samples = [" Order has already been set to ready for export: {\"orderid\":\"US-17074765\",\"sessionid\":\"6WsOGFqjhpmXp3d47eb2y7EWTh7hlXM_YUk=\",\"customer_info\":[{\"customerid\":\"\",\"registered\":\"unregistered\",\"loyalty_flag\":\"\"}],\"payment_info\":[{\"payment_method\":\"DW_APPLE_PAY\",\"card_type\":\"MCC\",\"error\":false,\"OOT\":\"10000000000003014764\",\"message\":\"\"}],\"order_status\":\"NEW\",\"confirmation_status\":\"CONFIRMED\",\"source\":\"web\",\"site\":\"US\",\"is_employee_order\":\"\",\"vip_order\":\"\",\"bopis_only_order\":\"\",\"mixed_bopis_order\":\"\"}", " {\"orderid\":\"US-17118820\",\"sessionid\":\"y9cN5Zvx308SpcSE34tYWzt-khOVYv0Qi6I=\",\"customer_info\":[{\"customerid\":\"7cea12c1-c6d1-4239-9c81-9cc335a49a4e\",\"registered\":\"registered\",\"loyalty_flag\":\"\"}],\"payment_info\":[{\"payment_method\":\"AURUS_CREDIT_CARD\",\"card_type\":\"VIC\",\"error\":false,\"OOT\":\"10000000000003054018\",\"message\":\"\"}],\"order_status\":\"NEW\",\"confirmation_status\":\"NOTCONFIRMED\",\"source\":\"APP\",\"site\":\"US\",\"is_employee_order\":true,\"vip_order\":true,\"bopis_only_order\":\"\",\"mixed_bopis_order\":true}", " {\"orderid\":\"US-DEVNA04-00224344\",\"sessionid\":\"fFyt0IuIdXnlmYPH-zPJEucly00tHixTV9sI-2Rq3SHt3VLIfrSqWQWdQpJGLQgPocVObSzlZzkVpVRChH52dg==\",\"customer_info\":[{\"customerid\":\"8448149d-b88d-4e9a-b2bc-8a50503e37f8\",\"registered\":\"registered\",\"loyalty_flag\":\"\"}],\"payment_info\":[{\"payment_method\":\"AURUS_CREDIT_CARD\",\"card_type\":\"VIC\",\"error\":false,\"OOT\":\"20000000000010443290\",\"message\":\"\"}],\"order_status\":\"NEW\",\"confirmation_status\":\"NOTCONFIRMED\",\"source\":\"APP\",\"site\":\"US\",\"is_employee_order\":\"\",\"vip_order\":\"\",\"bopis_only_order\":\"\",\"mixed_bopis_order\":\"\"}", "Order has already been set to ready for export: {\"orderid\":\"US-17794692\",\"sessionid\":\"zbar__nFol8ijSegi1T62JbuKAbOHnym-Us=\",\"customer_info\":[{\"customerid\":\"\",\"registered\":\"unregistered\",\"loyalty_flag\":\"\"}],\"payment_info\":[{\"payment_method\":\"DW_APPLE_PAY\",\"card_type\":\"VIC\",\"error\":false,\"OOT\":\"10000000000003695976\",\"message\":\"\"}],\"order_status\":\"NEW\",\"confirmation_status\":\"CONFIRMED\",\"source\":\"web\",\"site\":\"US\",\"is_employee_order\":\"\",\"vip_order\":\"\",\"bopis_only_order\":\"\",\"mixed_bopis_order\":\"\"}", "{\"orderid\":\"US-17027382\",\"sessionid\":\"HRX7yj0HqLWzHpbqvoZvuopYcl4NXhcFqMs=\",\"customer_info\":[{\"customerid\":\"\",\"registered\":\"unregistered\",\"loyalty_flag\":\"\"}],\"payment_info\":[{\"payment_method\":\"DW_APPLE_PAY\",\"card_type\":\"VIC\",\"error\":false,\"OOT\":\"10000000000002971975\",\"message\":\"\"}],\"order_status\":\"NEW\",\"confirmation_status\":\"CONFIRMED\",\"source\":\"web\",\"site\":\"US\",\"is_employee_order\":\"\",\"vip_order\":\"\",\"bopis_only_order\":\"\",\"mixed_bopis_order\":\"\"}"]
      } 
    ]
  }
] 