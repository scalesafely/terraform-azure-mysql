resource "azurerm_mysql_server" "website" {
  name                = var.mysql_server_name
  location            = var.location
  resource_group_name = var.resource_group_name

  administrator_login          = var.mysql_username
  administrator_login_password = var.mysql_password

  sku_name   = var.mysql_sku_name
  storage_mb = var.mysql_storage_mb
  version    = var.mysql_version

  auto_grow_enabled                 = true
  backup_retention_days             = var.mysql_backup_retention_days
  infrastructure_encryption_enabled = var.mysql_infrastructure_encryption_enabled
  public_network_access_enabled     = var.mysql_public_network_access_enabled
  ssl_enforcement_enabled           = var.mysql_ssl_enforcement_enabled
  ssl_minimal_tls_version_enforced  = var.mysql_ssl_minimal_tls_version_enforced
}


### Allow Runner IP
data "http" "myip" {
  url = "http://ifconfig.me/ip"
}


resource "azurerm_mysql_firewall_rule" "mysql_firewall" {
  for_each = var.mysql_firewall_rules

  name                = each.value.name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.website.name
  start_ip_address    = each.value.start_ip_address
  end_ip_address      = each.value.end_ip_address
}

