provider "acme" {
  server_url      = var.acme_url
}

resource "acme_registration" "reg" {
  account_key_pem = var.account_key
  email_address   = var.email
}

resource "tls_cert_request" "req" {
  key_algorithm   = "RSA"
  private_key_pem = file(var.ssl_private_key)
  subject {
    common_name   = var.common_name
    organization  = var.organization
  }
}

resource "acme_certificate" "certificate" {
  account_key_pem           = acme_registration.reg.account_key_pem
  certificate_request_pem   = tls_cert_request.req.cert_request_pem
  min_days_remaining        = var.min_days
  dns_challenge {
    provider                = var.cloud
  }
}
