output "sas_url_query_string_container" {
  value = "${data.azurerm_storage_account_blob_container_sas.main.sas}"
}

output "sas_url_query_string_blob" {
  value = "${data.azurerm_storage_account_sas.main.sas}"
}
