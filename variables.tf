variable "remote_state_path" {
  default = "../cluster/terraform.tfstate"
}

variable "instance_type" {
    default = "ecs.t6-c1m2.large"
}

variable "resource_group_id" {
    
}

variable "system_disk_category" {
    default = "cloud_efficiency"
}

variable "system_disk_name" {
    default = "SYSTEM"
}

variable "system_disk_description" {
    default = "This is disk desc"
}

variable "image_id" {
    default = "win2019_1809_x64_dtc_en-us_40G_alibase_20210916.vhd"
}

variable "instance_name" {
    default = "ecs-vm"
}

variable "internet_max_bandwidth_out" {
    default = 10
}

variable "password" {
    default = "P@ssword123"
}

variable "data_disks_name" {
    default = "Storage"
}

variable "data_disks_size" {
    default = 40
}

variable "data_disks_category" {
    default = "cloud_efficiency"
}