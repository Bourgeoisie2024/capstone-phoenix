module "network" {
  source = "./modules/network"

  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr

}

module "security" {
  source = "./modules/security"

  project_name = var.project_name
  environment  = var.environment

  vpc_id               = module.network.vpc_id
  allowed_ingress_cidr = var.allowed_ingress_cidr
}

module "compute" {
  source = "./modules/compute"

  project_name = var.project_name
  environment  = var.environment

  instance_type    = var.instance_type
  key_pair_name    = var.key_pair_name
  root_volume_size = var.root_volume_size

  public_subnet_a_id = module.network.public_subnet_a_id
  public_subnet_b_id = module.network.public_subnet_b_id

  control_plane_sg_id = module.security.control_plane_sg_id
  worker_sg_id        = module.security.worker_sg_id
}
