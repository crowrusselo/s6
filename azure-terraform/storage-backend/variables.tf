variable "location" {
  type    = string
  default = "East US 2"
}

/*variable "tags" {
  type = map(any)
}*/

variable "subscription_id" {
  type = string
}


variable "resource_group_name" {
  type    = string
  default = "dev-resources-4"
}

variable "vnet_name" {
  type    = string
  default = "myVnet"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "mySubnet"
}

variable "subnet_address_prefix" {
  type    = string
  default = "10.0.1.0/24"
}

variable "tags" {
  type = map(string)
  default = {
    environment = "development"
    project     = "vnet-setup"
  }
}

variable "vm_size" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "admin_username" {
  type    = string
  default = "adminuser"
}

variable "admin_password" {
  type    = string
  default = "P@ssw0rd1234!"
}

variable "vm_name" {
  type    = string
  default = "dev-vm"
}
