variable "child_vault" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name           = string
    soft_delete_retention_days = number
    secret_name = string
    key_permissions = list(string)
    secret_permissions = list(string)
    length = number
    special = bool
  }))
}