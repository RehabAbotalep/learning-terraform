resource "azuread_user" "user" {
  display_name        = "NAME"
  password            = "PASSWORD"
  user_principal_name = "EMAIL"
  mail_nickname       = "NICKNAME"
}

resource "azuread_group" "group" {
  display_name     = "Terraform Group"
  security_enabled = true

  members = [
    azuread_user.user.object_id,
    /* more users */
  ]
}