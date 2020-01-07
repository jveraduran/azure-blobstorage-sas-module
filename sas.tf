data "azurerm_storage_account_sas" "main" {
  connection_string = "${var.primary-connection-string}"
  https_only        = "${var.https-only}"

  resource_types {
    service   = "${var.resource-type-service}"
    container = "${var.resource-type-container}"
    object    = "${var.resource-type-object}"
  }

  services {
    blob  = "${var.service-blob}"
    queue = "${var.service-queue}"
    table = "${var.service-table}"
    file  = "${var.service-file}"
  }

  start  = "${var.start-date}"
  expiry = "${var.expire-date}"

  permissions {
    read    = "${var.permission-read}"
    write   = "${var.permission-write}"
    delete  = "${var.permission-delete}"
    list    = "${var.permission-list}"
    add     = "${var.permission-add}"
    create  = "${var.permission-create}"
    update  = "${var.permission-update}"
    process = "${var.permission-process}"
  }
}

data "azurerm_storage_account_blob_container_sas" "main" {
  connection_string = "${var.primary-connection-string}"
  container_name    = "${var.container-name}"
  https_only        = "${var.https-only}"

  ip_address = "${var.ip-address}"

  start  = "${var.start-date}"
  expiry = "${var.expire-date}"

  permissions {
    read    = "${var.permission-read}"
    write   = "${var.permission-write}"
    delete  = "${var.permission-delete}"
    list    = "${var.permission-list}"
    add     = "${var.permission-add}"
    create  = "${var.permission-create}"
  }
}