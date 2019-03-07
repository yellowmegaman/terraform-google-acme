variable "acme_url" {
  default     = "https://acme-v02.api.letsencrypt.org/directory"
  description = "ACME url, defaults to production letsencrypt"
}
variable "account_key" {
  default     = ""
  description = "ACME account pem. leave blank to generate"
}
variable "email"       {
  description = "Email of certificate holder"
}
variable "ssl_private_key" {
  description = "Existing certificate private key (for certificate pinning)"
  default     = ""
}
variable "common_name" {
  description = "Domain name for registration, wildcard supported"
}
variable "organization" {
  description = "Org name for certificate"
  default     = ""
}
variable "min_days" {
  description = "Minimal amount of days before terraform tries to update certificate"
  default     = "30"
}
variable "cloud" {
  description = "Cloud to use for dns challenge: gcloud/route53"
  default     = "gcloud"
}
