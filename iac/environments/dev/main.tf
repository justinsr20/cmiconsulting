module "route_53" {
  source = "../../modules/route_53"

  domain_name = var.domain_name
  environment = var.environment
  project_name = var.project_name
  certificate = module.certificate_manager.certificate
}

module "certificate_manager" {
  source = "../../modules/certificate_manager"
  domain_name = var.domain_name
}