variable "data_factory_linked_service_sftps" {
  description = <<EOT
Map of data_factory_linked_service_sftps, attributes below
Required:
    - authentication_type
    - data_factory_id
    - host
    - name
    - port
    - username
Optional:
    - additional_properties
    - annotations
    - description
    - host_key_fingerprint
    - integration_runtime_name
    - parameters
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - private_key_content_base64
    - private_key_content_base64_key_vault_id (alternative to private_key_content_base64 - read from Key Vault instead)
    - private_key_content_base64_key_vault_secret_name (alternative to private_key_content_base64 - read from Key Vault instead)
    - private_key_passphrase
    - private_key_passphrase_key_vault_id (alternative to private_key_passphrase - read from Key Vault instead)
    - private_key_passphrase_key_vault_secret_name (alternative to private_key_passphrase - read from Key Vault instead)
    - private_key_path
    - skip_host_key_validation
    - key_vault_password (block):
        - linked_service_name (required)
        - secret_name (required)
    - key_vault_private_key_content_base64 (block):
        - linked_service_name (required)
        - secret_name (required)
    - key_vault_private_key_passphrase (block):
        - linked_service_name (required)
        - secret_name (required)
EOT

  type = map(object({
    authentication_type                              = string
    data_factory_id                                  = string
    host                                             = string
    name                                             = string
    port                                             = number
    username                                         = string
    private_key_passphrase                           = optional(string)
    private_key_passphrase_key_vault_id              = optional(string)
    private_key_passphrase_key_vault_secret_name     = optional(string)
    private_key_content_base64                       = optional(string)
    private_key_content_base64_key_vault_id          = optional(string)
    private_key_content_base64_key_vault_secret_name = optional(string)
    password                                         = optional(string)
    password_key_vault_id                            = optional(string)
    password_key_vault_secret_name                   = optional(string)
    parameters                                       = optional(map(string))
    description                                      = optional(string)
    host_key_fingerprint                             = optional(string)
    private_key_path                                 = optional(string)
    annotations                                      = optional(list(string))
    additional_properties                            = optional(map(string))
    integration_runtime_name                         = optional(string)
    skip_host_key_validation                         = optional(bool)
    key_vault_password = optional(list(object({
      linked_service_name = string
      secret_name         = string
    })))
    key_vault_private_key_content_base64 = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
    key_vault_private_key_passphrase = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        length(v.host) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        length(v.username) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.host_key_fingerprint == null || (length(v.host_key_fingerprint) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.key_vault_private_key_passphrase == null || (length(v.key_vault_private_key_passphrase.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.key_vault_private_key_passphrase == null || (length(v.key_vault_private_key_passphrase.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.password == null || (length(v.password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.key_vault_password == null || alltrue([for item in v.key_vault_password : (length(item.linked_service_name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.key_vault_password == null || alltrue([for item in v.key_vault_password : (length(item.secret_name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.private_key_content_base64 == null || (can(base64decode(v.private_key_content_base64)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.key_vault_private_key_content_base64 == null || (length(v.key_vault_private_key_content_base64.linked_service_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_sftps : (
        v.key_vault_private_key_content_base64 == null || (length(v.key_vault_private_key_content_base64.secret_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

