resource "azurerm_resource_group" "main" {
  name     = "test-vm-rg"
  location = var.location
}


module "vm" {
  source = "./modules/vm"

  vm_name        = "test-vm-1"
  location       = var.location
  rg_name        = azurerm_resource_group.main.name
  subnet_id      = "/subscriptions/cd022542-e5a6-43c1-a1af-208a100106a7/resourceGroups/test-privatenet/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/default"

  admin_username = "azureuser"
  ssh_public_key = file("~/.ssh/id_rsa.pub")

  tags = {}
}