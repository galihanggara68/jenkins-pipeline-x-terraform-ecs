resource "alicloud_instance" "instance" {
  security_groups   = var.security_groups

  # series III
  resource_group_id          = var.resource_group_id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  instance_name              = var.instance_name
  vswitch_id                 = var.vswitch_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.data_disks_name
    size        = var.data_disks_size
    category    = var.data_disks_category
    encrypted   = false
  }
}