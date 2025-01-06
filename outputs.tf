output "proxy_floating_ip" {
  value       = openstack_networking_floatingip_v2.proxy_fip.address
  description = "Floating IP address of proxy jump instance"
}
