resource "openstack_compute_instance_v2" "proxy" {
  name            = "kypo-proxy-jump"
  flavor_name     = var.flavor_name
  image_id        = var.image_id
  key_pair        = var.key_pair
  security_groups = [var.security_group]

  network {
    uuid = var.network_id
  }
}

resource "openstack_networking_floatingip_v2" "proxy_fip" {
  pool = var.external_network_name
}

resource "openstack_compute_floatingip_associate_v2" "proxy_fip_association" {
  floating_ip = openstack_networking_floatingip_v2.proxy_fip.address
  instance_id = openstack_compute_instance_v2.proxy.id
}
