output "cloud_key_manager_secret_consumers_lookup_consumers" {
  description = "Map of consumers values across all cloud_key_manager_secret_consumers_lookup, keyed the same as var.cloud_key_manager_secret_consumers_lookup except keys with no consumers are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secret_consumers.cloud_key_manager_secret_consumers_lookup : k => v.consumers if v.consumers != null && length(v.consumers) > 0 }
}
output "cloud_key_manager_secret_consumers_lookup_secret_id" {
  description = "Map of secret_id values across all cloud_key_manager_secret_consumers_lookup, keyed the same as var.cloud_key_manager_secret_consumers_lookup except keys with no secret_id are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secret_consumers.cloud_key_manager_secret_consumers_lookup : k => v.secret_id if v.secret_id != null && length(v.secret_id) > 0 }
}
output "cloud_key_manager_secret_consumers_lookup_service_name" {
  description = "Map of service_name values across all cloud_key_manager_secret_consumers_lookup, keyed the same as var.cloud_key_manager_secret_consumers_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secret_consumers.cloud_key_manager_secret_consumers_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

