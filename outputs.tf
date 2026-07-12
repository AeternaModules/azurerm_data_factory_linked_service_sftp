output "data_factory_linked_service_sftps_id" {
  description = "Map of id values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.id }
}
output "data_factory_linked_service_sftps_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.additional_properties }
}
output "data_factory_linked_service_sftps_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.annotations }
}
output "data_factory_linked_service_sftps_authentication_type" {
  description = "Map of authentication_type values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.authentication_type }
}
output "data_factory_linked_service_sftps_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.data_factory_id }
}
output "data_factory_linked_service_sftps_description" {
  description = "Map of description values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.description }
}
output "data_factory_linked_service_sftps_host" {
  description = "Map of host values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.host }
}
output "data_factory_linked_service_sftps_host_key_fingerprint" {
  description = "Map of host_key_fingerprint values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.host_key_fingerprint }
}
output "data_factory_linked_service_sftps_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.integration_runtime_name }
}
output "data_factory_linked_service_sftps_key_vault_password" {
  description = "Map of key_vault_password values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.key_vault_password }
}
output "data_factory_linked_service_sftps_key_vault_private_key_content_base64" {
  description = "Map of key_vault_private_key_content_base64 values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.key_vault_private_key_content_base64 }
}
output "data_factory_linked_service_sftps_key_vault_private_key_passphrase" {
  description = "Map of key_vault_private_key_passphrase values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.key_vault_private_key_passphrase }
}
output "data_factory_linked_service_sftps_name" {
  description = "Map of name values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.name }
}
output "data_factory_linked_service_sftps_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.parameters }
}
output "data_factory_linked_service_sftps_password" {
  description = "Map of password values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.password }
  sensitive   = true
}
output "data_factory_linked_service_sftps_port" {
  description = "Map of port values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.port }
}
output "data_factory_linked_service_sftps_private_key_content_base64" {
  description = "Map of private_key_content_base64 values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.private_key_content_base64 }
  sensitive   = true
}
output "data_factory_linked_service_sftps_private_key_passphrase" {
  description = "Map of private_key_passphrase values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.private_key_passphrase }
  sensitive   = true
}
output "data_factory_linked_service_sftps_private_key_path" {
  description = "Map of private_key_path values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.private_key_path }
}
output "data_factory_linked_service_sftps_skip_host_key_validation" {
  description = "Map of skip_host_key_validation values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.skip_host_key_validation }
}
output "data_factory_linked_service_sftps_username" {
  description = "Map of username values across all data_factory_linked_service_sftps, keyed the same as var.data_factory_linked_service_sftps"
  value       = { for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : k => v.username }
}

