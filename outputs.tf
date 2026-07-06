output "data_factory_linked_service_sftps" {
  description = "All data_factory_linked_service_sftp resources"
  value       = azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps
  sensitive   = true
}
output "data_factory_linked_service_sftps_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.additional_properties]
}
output "data_factory_linked_service_sftps_annotations" {
  description = "List of annotations values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.annotations]
}
output "data_factory_linked_service_sftps_authentication_type" {
  description = "List of authentication_type values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.authentication_type]
}
output "data_factory_linked_service_sftps_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.data_factory_id]
}
output "data_factory_linked_service_sftps_description" {
  description = "List of description values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.description]
}
output "data_factory_linked_service_sftps_host" {
  description = "List of host values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.host]
}
output "data_factory_linked_service_sftps_host_key_fingerprint" {
  description = "List of host_key_fingerprint values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.host_key_fingerprint]
}
output "data_factory_linked_service_sftps_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.integration_runtime_name]
}
output "data_factory_linked_service_sftps_key_vault_password" {
  description = "List of key_vault_password values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.key_vault_password]
}
output "data_factory_linked_service_sftps_key_vault_private_key_content_base64" {
  description = "List of key_vault_private_key_content_base64 values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.key_vault_private_key_content_base64]
}
output "data_factory_linked_service_sftps_key_vault_private_key_passphrase" {
  description = "List of key_vault_private_key_passphrase values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.key_vault_private_key_passphrase]
}
output "data_factory_linked_service_sftps_name" {
  description = "List of name values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.name]
}
output "data_factory_linked_service_sftps_parameters" {
  description = "List of parameters values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.parameters]
}
output "data_factory_linked_service_sftps_password" {
  description = "List of password values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.password]
  sensitive   = true
}
output "data_factory_linked_service_sftps_port" {
  description = "List of port values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.port]
}
output "data_factory_linked_service_sftps_private_key_content_base64" {
  description = "List of private_key_content_base64 values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.private_key_content_base64]
  sensitive   = true
}
output "data_factory_linked_service_sftps_private_key_passphrase" {
  description = "List of private_key_passphrase values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.private_key_passphrase]
  sensitive   = true
}
output "data_factory_linked_service_sftps_private_key_path" {
  description = "List of private_key_path values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.private_key_path]
}
output "data_factory_linked_service_sftps_skip_host_key_validation" {
  description = "List of skip_host_key_validation values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.skip_host_key_validation]
}
output "data_factory_linked_service_sftps_username" {
  description = "List of username values across all data_factory_linked_service_sftps"
  value       = [for k, v in azurerm_data_factory_linked_service_sftp.data_factory_linked_service_sftps : v.username]
}

