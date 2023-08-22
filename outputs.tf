
output "lb_ip" {
  value       = digitalocean_loadbalancer.wp_lb.ip
  description = "IP do Load Balancer"
}

output "wp_vm_ips" {
  value       = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "Ips das máquinas wordpress"

}

output "database_username" {
  value = digitalocean_database_user.wp_database_user.name

}

output "database_password" {
  value     = digitalocean_database_user.wp_database_user.password
  sensitive = true
}