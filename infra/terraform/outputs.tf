output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_a_id" {
  value = module.network.public_subnet_a_id
}

output "public_subnet_b_id" {
  value = module.network.public_subnet_b_id
}

output "control_plane_sg_id" {
  value = module.security.control_plane_sg_id
}

output "worker_sg_id" {
  value = module.security.worker_sg_id
}

output "control_plane_public_ip" {
  value = module.compute.control_plane_public_ip
}

output "worker_1_public_ip" {
  value = module.compute.worker_1_public_ip
}

output "worker_2_public_ip" {
  value = module.compute.worker_2_public_ip
}

output "control_plane_instance_id" {
  value = module.compute.control_plane_instance_id
}

output "worker_1_instance_id" {
  value = module.compute.worker_1_instance_id
}

output "worker_2_instance_id" {
  value = module.compute.worker_2_instance_id
}