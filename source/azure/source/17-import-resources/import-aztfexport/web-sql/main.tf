resource "azurerm_resource_group" "res-0" {
  location = "westeurope"
  name     = "WebAppSqlRG"
}
resource "azurerm_mssql_server" "res-1" {
  administrator_login = "4dm1n157r470r"
  location            = "westeurope"
  minimum_tls_version = "Disabled"
  name                = "terraform-sqlserver-010203"
  resource_group_name = "WebAppSqlRG"
  tags = {
    environment = "production"
  }
  version = "12.0"
  depends_on = [
    azurerm_resource_group.res-0,
  ]
}
resource "azurerm_mssql_database" "res-11" {
  name      = "ProductsDB"
  server_id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203"
  tags = {
    environment = "production"
  }
  depends_on = [
    azurerm_mssql_server.res-1,
  ]
}
resource "azurerm_mssql_database_extended_auditing_policy" "res-22" {
  database_id            = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/databases/ProductsDB"
  enabled                = false
  log_monitoring_enabled = false
  depends_on = [
    azurerm_mssql_database.res-11,
  ]
}
resource "azurerm_mssql_database_extended_auditing_policy" "res-31" {
  database_id            = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/databases/master"
  enabled                = false
  log_monitoring_enabled = false
}
resource "azurerm_mssql_server_microsoft_support_auditing_policy" "res-37" {
  enabled                = false
  log_monitoring_enabled = false
  server_id              = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203"
  depends_on = [
    azurerm_mssql_server.res-1,
  ]
}
resource "azurerm_mssql_server_transparent_data_encryption" "res-38" {
  server_id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203"
  depends_on = [
    azurerm_mssql_server.res-1,
  ]
}
resource "azurerm_mssql_server_extended_auditing_policy" "res-39" {
  enabled                = false
  log_monitoring_enabled = false
  server_id              = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203"
  depends_on = [
    azurerm_mssql_server.res-1,
  ]
}
resource "azurerm_mssql_server_security_alert_policy" "res-41" {
  resource_group_name = "WebAppSqlRG"
  server_name         = "terraform-sqlserver-010203"
  state               = "Disabled"
  depends_on = [
    azurerm_mssql_server.res-1,
  ]
}
resource "azurerm_mssql_server_vulnerability_assessment" "res-43" {
  server_security_alert_policy_id = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Sql/servers/terraform-sqlserver-010203/securityAlertPolicies/Default"
  storage_container_path          = ""
  depends_on = [
    azurerm_mssql_server_security_alert_policy.res-41,
  ]
}
resource "azurerm_service_plan" "res-44" {
  location            = "westeurope"
  name                = "example-appservice-plan"
  os_type             = "Windows"
  resource_group_name = "WebAppSqlRG"
  sku_name            = "S1"
  depends_on = [
    azurerm_resource_group.res-0,
  ]
}
resource "azurerm_windows_web_app" "res-45" {
  app_settings = {
    SOME_KEY = "some-value"
  }
  location            = "westeurope"
  name                = "appservice-010203"
  resource_group_name = "WebAppSqlRG"
  service_plan_id     = "/subscriptions/8097991a-5a10-4f4d-9493-8b90f6dede29/resourceGroups/WebAppSqlRG/providers/Microsoft.Web/serverfarms/example-appservice-plan"
  connection_string {
    name  = "Database"
    type  = "SQLAzure"
    value = "Server=tcp:azurerm_mssql_server.sql.fully_qualified_domain_name Database=azurerm_mssql_database.db.name;User ID=azurerm_mssql_server.sql.administrator_login;Password=azurerm_mssql_server.sql.administrator_login_password;Trusted_Connection=False;Encrypt=True;"
  }
  site_config {
    always_on         = false
    ftps_state        = "FtpsOnly"
    use_32_bit_worker = false
    virtual_application {
      physical_path = "site\\wwwroot"
      preload       = false
      virtual_path  = "/"
    }
  }
  depends_on = [
    azurerm_service_plan.res-44,
  ]
}
resource "azurerm_app_service_custom_hostname_binding" "res-49" {
  app_service_name    = "appservice-010203"
  hostname            = "appservice-010203.azurewebsites.net"
  resource_group_name = "WebAppSqlRG"
  depends_on = [
    azurerm_windows_web_app.res-45,
  ]
}
