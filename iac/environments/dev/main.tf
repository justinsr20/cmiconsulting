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

module "vpc" {
  source = "../../modules/vpc"

  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}

module "ecs" {
  source = "../../modules/ecs"

  ecs_cluster_name = "shared-apps"
}

module "ec2" {
  source = "../../modules/ec2"
  public_subnet_ids = module.vpc.public_subnet_ids
  vpc_id = module.vpc.app_vpc.id
}

module "iam" {
  source = "../../modules/iam"
}