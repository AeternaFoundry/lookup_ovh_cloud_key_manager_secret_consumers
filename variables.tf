variable "cloud_key_manager_secret_consumers_lookup" {
  description = <<EOT
Map of cloud_key_manager_secret_consumers_lookup, attributes below
Required:
    - secret_id
    - service_name
EOT

  type = map(object({
    secret_id    = string
    service_name = string
  }))
}

