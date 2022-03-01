terraform {
  required_version = "1.1.5"
}

data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = var.remote_state_path
  }
}

module "vm" {
  source = "./modules/ecs"

  security_groups   = [data.terraform_remote_state.vpc.outputs.this_security_group_id]

  # series III
  resource_group_id          = data.terraform_remote_state.vpc.this_resource_group_id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category       
  system_disk_name           = var.system_disk_name           
  system_disk_description    = var.system_disk_description    
  image_id                   = var.image_id                   
  instance_name              = var.instance_name              
  vswitch_id                 = data.terraform_remote_state.vpc.outputs.this_vswitch_ids[0][0]
  internet_max_bandwidth_out = var.internet_max_bandwidth_out 

  password                   = var.password                   
  
  data_disks_name            = var.data_disks_name            
  data_disks_size            = var.data_disks_size            
  data_disks_category        = var.data_disks_category        

}