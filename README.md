## Terraform module to acquire certs from ACME-compatible providers

This repo is a terraform module for ACME ssl acquisition with gcloud/route53 dns challenge.
Certificates are stored in state and can be used by other resources. Private key can be specified in case you are using certificate pinning.

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
