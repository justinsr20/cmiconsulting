variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "project_name" {
  description = "Project name used for naming resources."
  type        = string
}

variable "certificate" {
  description = "ACM certificate object passed from the certificate module."
  type        = any
}