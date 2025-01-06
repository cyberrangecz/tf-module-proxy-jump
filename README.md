<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_compute_instance_v2.proxy](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_instance_v2) | resource |
| [openstack_networking_floatingip_associate_v2.proxy_fip_association](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_floatingip_associate_v2) | resource |
| [openstack_networking_floatingip_v2.proxy_fip](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_floatingip_v2) | resource |
| [openstack_networking_port_v2.port](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_port_v2) | resource |
| [openstack_networking_secgroup_v2.sg](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/data-sources/networking_secgroup_v2) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_external_network_name"></a> [external\_network\_name](#input\_external\_network\_name) | External network name used for floating IP allocation | `string` | n/a | yes |
| <a name="input_flavor_name"></a> [flavor\_name](#input\_flavor\_name) | OpenStack flavor used by proxy jump instance | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | OpenStack image ID used by proxy jump instance | `string` | n/a | yes |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | OpenStack keypair name used by proxy jump instance | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Id of OpenStack internal network used by proxy jump instance | `string` | n/a | yes |
| <a name="input_security_group"></a> [security\_group](#input\_security\_group) | OpenStack proxy jump security group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_proxy_floating_ip"></a> [proxy\_floating\_ip](#output\_proxy\_floating\_ip) | Floating IP address of proxy jump instance |
<!-- END_TF_DOCS -->