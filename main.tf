data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.data_factory_linked_service_sftps : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
data "azurerm_key_vault_secret" "private_key_content_base64" {
  for_each     = { for k, v in var.data_factory_linked_service_sftps : k => v if v.private_key_content_base64_key_vault_id != null && v.private_key_content_base64_key_vault_secret_name != null }
  name         = each.value.private_key_content_base64_key_vault_secret_name
  key_vault_id = each.value.private_key_content_base64_key_vault_id
}
data "azurerm_key_vault_secret" "private_key_passphrase" {
  for_each     = { for k, v in var.data_factory_linked_service_sftps : k => v if v.private_key_passphrase_key_vault_id != null && v.private_key_passphrase_key_vault_secret_name != null }
  name         = each.value.private_key_passphrase_key_vault_secret_name
  key_vault_id = each.value.private_key_passphrase_key_vault_id
}
resource "azurerm_data_factory_linked_service_sftp" "data_factory_linked_service_sftps" {
  for_each = var.data_factory_linked_service_sftps

  authentication_type        = each.value.authentication_type
  data_factory_id            = each.value.data_factory_id
  host                       = each.value.host
  name                       = each.value.name
  port                       = each.value.port
  username                   = each.value.username
  private_key_passphrase     = each.value.private_key_passphrase != null ? each.value.private_key_passphrase : try(data.azurerm_key_vault_secret.private_key_passphrase[each.key].value, null)
  private_key_content_base64 = each.value.private_key_content_base64 != null ? each.value.private_key_content_base64 : try(data.azurerm_key_vault_secret.private_key_content_base64[each.key].value, null)
  password                   = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  parameters                 = each.value.parameters
  description                = each.value.description
  host_key_fingerprint       = each.value.host_key_fingerprint
  private_key_path           = each.value.private_key_path
  annotations                = each.value.annotations
  additional_properties      = each.value.additional_properties
  integration_runtime_name   = each.value.integration_runtime_name
  skip_host_key_validation   = each.value.skip_host_key_validation

  dynamic "key_vault_password" {
    for_each = each.value.key_vault_password != null ? each.value.key_vault_password : []
    content {
      linked_service_name = key_vault_password.value.linked_service_name
      secret_name         = key_vault_password.value.secret_name
    }
  }

  dynamic "key_vault_private_key_content_base64" {
    for_each = each.value.key_vault_private_key_content_base64 != null ? [each.value.key_vault_private_key_content_base64] : []
    content {
      linked_service_name = key_vault_private_key_content_base64.value.linked_service_name
      secret_name         = key_vault_private_key_content_base64.value.secret_name
    }
  }

  dynamic "key_vault_private_key_passphrase" {
    for_each = each.value.key_vault_private_key_passphrase != null ? [each.value.key_vault_private_key_passphrase] : []
    content {
      linked_service_name = key_vault_private_key_passphrase.value.linked_service_name
      secret_name         = key_vault_private_key_passphrase.value.secret_name
    }
  }
}

