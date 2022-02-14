terraform {
  required_version = "1.1.3"
  required_providers {
	alicloud = {
		source  = "aliyun/alicloud"
		version = ">= 1.151.0"
	}
  }
}