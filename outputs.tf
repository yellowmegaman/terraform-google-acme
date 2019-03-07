output "certificate_pem" {
  value = "${acme_certificate.certificate.certificate_pem}"
}
output "certificate_issuer_pem" {
  value = "${acme_certificate.certificate.issuer_pem}"
}
