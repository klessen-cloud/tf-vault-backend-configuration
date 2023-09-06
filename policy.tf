resource "vault_policy" "backend_configuration" {
  name     = "${var.component}-${var.environment}"

  policy = templatefile("${path.module}/policies/component.hcl.tftpl", {
    environment = var.environment,
    component   = var.component
  })
}
