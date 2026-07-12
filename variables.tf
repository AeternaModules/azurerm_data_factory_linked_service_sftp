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
    - private_key_content_base64
    - private_key_passphrase
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
    authentication_type        = string
    data_factory_id            = string
    host                       = string
    name                       = string
    port                       = number
    username                   = string
    private_key_passphrase     = optional(string)
    private_key_content_base64 = optional(string)
    password                   = optional(string)
    parameters                 = optional(map(string))
    description                = optional(string)
    host_key_fingerprint       = optional(string)
    private_key_path           = optional(string)
    annotations                = optional(list(string))
    additional_properties      = optional(map(string))
    integration_runtime_name   = optional(string)
    skip_host_key_validation   = optional(bool)
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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_sftp's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: authentication_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: host
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: username
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: host_key_fingerprint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: integration_runtime_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_private_key_passphrase.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_private_key_passphrase.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: password
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_password.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_password.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: private_key_content_base64
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: key_vault_private_key_content_base64.linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_private_key_content_base64.secret_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

