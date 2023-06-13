<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_mysql"></a> [mysql](#requirement\_mysql) | ~> 3.0.34 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_http"></a> [http](#provider\_http) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_mysql_firewall_rule.mysql_firewall](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_firewall_rule) | resource |
| [azurerm_mysql_server.website](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_server) | resource |
| [http_http.myip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_mysql_backup_retention_days"></a> [mysql\_backup\_retention\_days](#input\_mysql\_backup\_retention\_days) | n/a | `number` | n/a | yes |
| <a name="input_mysql_firewall_rules"></a> [mysql\_firewall\_rules](#input\_mysql\_firewall\_rules) | n/a | <pre>map(object({<br>    name             = string<br>    start_ip_address = string<br>    end_ip_address   = string<br>  }))</pre> | n/a | yes |
| <a name="input_mysql_infrastructure_encryption_enabled"></a> [mysql\_infrastructure\_encryption\_enabled](#input\_mysql\_infrastructure\_encryption\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_mysql_password"></a> [mysql\_password](#input\_mysql\_password) | n/a | `string` | n/a | yes |
| <a name="input_mysql_public_network_access_enabled"></a> [mysql\_public\_network\_access\_enabled](#input\_mysql\_public\_network\_access\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_mysql_server_name"></a> [mysql\_server\_name](#input\_mysql\_server\_name) | n/a | `string` | n/a | yes |
| <a name="input_mysql_sku_name"></a> [mysql\_sku\_name](#input\_mysql\_sku\_name) | n/a | `string` | n/a | yes |
| <a name="input_mysql_ssl_enforcement_enabled"></a> [mysql\_ssl\_enforcement\_enabled](#input\_mysql\_ssl\_enforcement\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_mysql_ssl_minimal_tls_version_enforced"></a> [mysql\_ssl\_minimal\_tls\_version\_enforced](#input\_mysql\_ssl\_minimal\_tls\_version\_enforced) | n/a | `string` | n/a | yes |
| <a name="input_mysql_storage_mb"></a> [mysql\_storage\_mb](#input\_mysql\_storage\_mb) | n/a | `number` | n/a | yes |
| <a name="input_mysql_username"></a> [mysql\_username](#input\_mysql\_username) | n/a | `string` | n/a | yes |
| <a name="input_mysql_version"></a> [mysql\_version](#input\_mysql\_version) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mysql_resource_id"></a> [mysql\_resource\_id](#output\_mysql\_resource\_id) | n/a |
<!-- END_TF_DOCS -->