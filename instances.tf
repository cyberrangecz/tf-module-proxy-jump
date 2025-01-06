data "openstack_networking_secgroup_v2" "sg" {
  name = var.security_group
}

resource "openstack_networking_port_v2" "port" {
  name               = "${terraform.workspace}-proxy-jump"
  network_id         = var.network_id
  security_group_ids = [data.openstack_networking_secgroup_v2.sg.id]
  admin_state_up     = "true"
}

resource "openstack_compute_instance_v2" "proxy" {
  name        = "proxy-jump"
  flavor_name = var.flavor_name
  image_id    = var.image_id
  key_pair    = var.key_pair

  network {
    port = openstack_networking_port_v2.port.id
  }
}

resource "openstack_networking_floatingip_v2" "proxy_fip" {
  pool = var.external_network_name
}

resource "openstack_networking_floatingip_associate_v2" "proxy_fip_association" {
  floating_ip = openstack_networking_floatingip_v2.proxy_fip.address
  port_id     = openstack_networking_port_v2.port.id
}
