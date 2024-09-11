provider "azurerm" {
 features{}
  
subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
resource "azurerm_resource_group" "Terraform_RG" {
  name     = Terraform_RG
  location = "East US"
  }

  resource "azurerm_virtual_network" "main" {
    name = "terraform-vnet"
    address_space = ["10.0.0.0/16"]  
      location = azurerm_resource_group.Terraform_RG.location
    resource_group_name = azurerm_resource_group.Terraform_RG.name
  }

  resource "azurerm_subnet" "internal" {
   name = "terraform-subnet"
   resource_group_name = azurerm_resource_group.Terraform_RG 
    virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
  }

  resource "azurerm_network_interface" "main" {
  name = "Terraform_NIC"
  location = azurerm_resource_group.Terraform_RG.location
  resource_group_name = azurerm_resource_group.Terraform_RG.name

  ip_configuration {
    name = "testipconfig"
    subnet_id = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
    
  }

  resource "azurerm_virtual_machine" "name" {
  name = "IAC_VM_FN"
  location = azurerm_resource_group.Terraform_RG.location
  resource_group_name = azurerm_resource_group.Terraform_RG.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size = "Standard_B1s"
  storage_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
  }
  storage_os_disk {
    name = "myosdisk1"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name = "IAC_VM_FN"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  }
