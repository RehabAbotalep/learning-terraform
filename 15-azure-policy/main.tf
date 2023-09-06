resource "azurerm_resource_group" "rg" {
  name        = "policy-rg"
  location = "westeurope"
}

resource "azurerm_policy_definition" "policy" {
  name         = "only-deploy-in-westeurope"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "my-policy-definition"

  policy_rule = <<POLICY_RULE
 {
    "if": {
      "not": {
        "field": "location",
        "equals": "westeurope"
      }
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}

resource "azurerm_resource_policy_assignment" "assignment" {
  name                 = "policy-assignment"
  resource_id          = azurerm_resource_group.rg.id
  policy_definition_id = azurerm_policy_definition.policy.id
}