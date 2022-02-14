variable "security_groups" {
    default = []
}

variable "instance_type" {
    default = "ecs.s2.small"
}

variable "system_disk_category" {
    default = ""
}

variable "system_disk_name" {
    default = ""
}

variable "system_disk_description" {
    default = ""
}

variable "image_id" {
    default = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
}

variable "instance_name" {
    default = ""
}

variable "password" {
    default = "Password123"
}

variable "vswitch_id" {
    default = ""
}

variable "internet_max_bandwidth_out" {
    default = 10
}

variable "data_disks_name" {
    default = ""
}

variable "data_disks_size" {
    default = 20
}

variable "data_disks_category" {
    default = "cloud_efficiency"
}