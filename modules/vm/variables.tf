variable "vm_name" {}
variable "location" {}
variable "rg_name" {}
variable "subnet_id" {}

variable "storage_account_id" {}

variable "vm_size" {
  default = "Standard_D2s_v3"
}

variable "admin_username" {}
variable "ssh_public_key" {}

variable "tags" {
  type    = map(string)
  default = {}
}