variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "mysql_username" {
  type    = string
}

variable "mysql_password" {
  type    = string
}

variable "mysql_sku_name" {
  type    = string
}

variable "mysql_storage_mb" {
  type    = number
}

variable "mysql_version" {
  type    = string
}

variable "mysql_backup_retention_days" {
  type    = number
}

variable "mysql_infrastructure_encryption_enabled" {
  type    = bool
}

variable "mysql_public_network_access_enabled" {
  type    = bool
}

variable "mysql_ssl_enforcement_enabled" {
  type    = bool
}

variable "mysql_ssl_minimal_tls_version_enforced" {
  type    = string
}

variable "mysql_firewall_rules" {
  type = map(object({
    name             = string
    start_ip_address = string
    end_ip_address   = string
  }))
}

variable "mysql_server_name" {
  type = string
}