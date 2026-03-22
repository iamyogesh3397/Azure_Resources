resource "azurerm_key_vault" "KeyVault" {
    for_each = var.child_vault
  name                       = each.value.name
  location                   = each.value.location
  resource_group_name        = each.value.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = each.value.sku_name
  soft_delete_retention_days = each.value.soft_delete_retention_days

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = each.value.key_permissions
    secret_permissions = each.value.secret_permissions
    
  }
}

resource "azurerm_key_vault_secret" "Secrets" {
    for_each = var.child_vault
  name         = each.value.secret_name
  value        = random_password.password[each.key].result
  key_vault_id = azurerm_key_vault.KeyVault[each.key].id
}

resource "random_password" "password" {
    for_each = var.child_vault
  length           = each.value.length
  special          = each.value.special
#   override_special = "!#$%&*()-_=+[]{}<>:?"
}
