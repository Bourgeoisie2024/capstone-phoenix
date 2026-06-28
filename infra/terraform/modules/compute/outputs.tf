output "control_plane_public_ip" {
  value = aws_instance.control_plane.public_ip
}

output "worker_1_public_ip" {
  value = aws_instance.worker_1.public_ip
}

output "worker_2_public_ip" {
  value = aws_instance.worker_2.public_ip
}

output "control_plane_instance_id" {
  value = aws_instance.control_plane.id
}

output "worker_1_instance_id" {
  value = aws_instance.worker_1.id
}

output "worker_2_instance_id" {
  value = aws_instance.worker_2.id
}