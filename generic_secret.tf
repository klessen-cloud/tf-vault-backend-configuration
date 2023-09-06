resource "vault_generic_secret" "backend_configuration" {
  path = "secret/${var.environment}/${var.component}"

  data_json = jsonencode({
    "db_user"     : var.db_user,
    "db_password" : var.db_password
  })
}
