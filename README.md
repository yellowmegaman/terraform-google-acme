## Terraform module to acquire certs from ACME-compatible providers

Usage:

```
module "mycert" {
  source          = "github.com/yellowmegaman/terraform-google-acme"
  email           = "me@example.com"
  ssl_private_key = "${var.my_priv_key}"
  common_name     = "*.example.com"
  organization    = "example"
  cloud           = "gcloud"
}

```
