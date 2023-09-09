import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG"
  to = azurerm_resource_group.res-0
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203"
  to = azurerm_mssql_server.res-1
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/databases/ProductsDB"
  to = azurerm_mssql_database.res-11
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/databases/ProductsDB/extendedAuditingSettings/Default"
  to = azurerm_mssql_database_extended_auditing_policy.res-22
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/databases/master/extendedAuditingSettings/Default"
  to = azurerm_mssql_database_extended_auditing_policy.res-31
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/devOpsAuditingSettings/Default"
  to = azurerm_mssql_server_microsoft_support_auditing_policy.res-37
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/encryptionProtector/current"
  to = azurerm_mssql_server_transparent_data_encryption.res-38
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/extendedAuditingSettings/Default"
  to = azurerm_mssql_server_extended_auditing_policy.res-39
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/securityAlertPolicies/Default"
  to = azurerm_mssql_server_security_alert_policy.res-41
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/vulnerabilityAssessments/Default"
  to = azurerm_mssql_server_vulnerability_assessment.res-43
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Web/serverfarms/example-appservice-plan"
  to = azurerm_service_plan.res-44
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Web/sites/appservice-010203"
  to = azurerm_windows_web_app.res-45
}
import {
  id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Web/sites/appservice-010203/hostNameBindings/appservice-010203.azurewebsites.net"
  to = azurerm_app_service_custom_hostname_binding.res-49
}
