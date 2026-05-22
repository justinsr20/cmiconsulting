variable "aws_region" {
  description = "AWS region to deploy resources into."
  type        = string
}

variable "project_name" {
  description = "Project name used for naming resources."
  type        = string
}

variable "aws_profile" {
  description = "Which AWS profile to use"
  type        = string
}

variable "domain_name" {
  default = "Domain Name"
  type        = string
}

variable "environment" {
  default = "Environment Name"
  type        = string
}