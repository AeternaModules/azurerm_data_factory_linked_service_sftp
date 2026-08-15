output "data_factory_linked_service_sftps_id" {
  description = "Map of id values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_linked_service_sftps_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_linked_service_sftps_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_linked_service_sftps_authentication_type" {
  description = "Map of authentication_type values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "data_factory_linked_service_sftps_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_linked_service_sftps_description" {
  description = "Map of description values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_linked_service_sftps_host" {
  description = "Map of host values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.host if v.host != null && length(v.host) > 0 }
}
output "data_factory_linked_service_sftps_host_key_fingerprint" {
  description = "Map of host_key_fingerprint values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.host_key_fingerprint if v.host_key_fingerprint != null && length(v.host_key_fingerprint) > 0 }
}
output "data_factory_linked_service_sftps_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.integration_runtime_name if v.integration_runtime_name != null && length(v.integration_runtime_name) > 0 }
}
output "data_factory_linked_service_sftps_key_vault_password" {
  description = "Map of key_vault_password values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.key_vault_password if v.key_vault_password != null && length(v.key_vault_password) > 0 }
}
output "data_factory_linked_service_sftps_key_vault_private_key_content_base64" {
  description = "Map of key_vault_private_key_content_base64 values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => one(v.key_vault_private_key_content_base64) if v.key_vault_private_key_content_base64 != null && length(v.key_vault_private_key_content_base64) > 0 }
}
output "data_factory_linked_service_sftps_key_vault_private_key_passphrase" {
  description = "Map of key_vault_private_key_passphrase values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => one(v.key_vault_private_key_passphrase) if v.key_vault_private_key_passphrase != null && length(v.key_vault_private_key_passphrase) > 0 }
}
output "data_factory_linked_service_sftps_name" {
  description = "Map of name values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_linked_service_sftps_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_linked_service_sftps_password" {
  description = "Map of password values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_sftps_port" {
  description = "Map of port values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.port if v.port != null }
}
output "data_factory_linked_service_sftps_private_key_content_base64" {
  description = "Map of private_key_content_base64 values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.private_key_content_base64 if v.private_key_content_base64 != null && length(v.private_key_content_base64) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_sftps_private_key_passphrase" {
  description = "Map of private_key_passphrase values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.private_key_passphrase if v.private_key_passphrase != null && length(v.private_key_passphrase) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_sftps_private_key_path" {
  description = "Map of private_key_path values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.private_key_path if v.private_key_path != null && length(v.private_key_path) > 0 }
}
output "data_factory_linked_service_sftps_skip_host_key_validation" {
  description = "Map of skip_host_key_validation values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.skip_host_key_validation if v.skip_host_key_validation != null }
}
output "data_factory_linked_service_sftps_username" {
  description = "Map of username values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.username if v.username != null && length(v.username) > 0 }
}

