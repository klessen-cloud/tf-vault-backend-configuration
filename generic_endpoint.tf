resource "vault_generic_endpoint" "payment_production" {
  path                 = "auth/userpass/users/${var.component}-${var.environment}"
  ignore_absent_fields = true

  data_json = jsonencode({
    "policies" : var.endpoint_policies,
    "password" : var.endpoint_password
  })
}
