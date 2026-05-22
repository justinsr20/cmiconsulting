output "certificate" {
  description = "certificate for the domain"
  value       = aws_acm_certificate.main
}