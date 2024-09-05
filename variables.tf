variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "security_rule" {
  description = "The list of security group rule"
  type        = list(map(string))
  default = [
    {
      name                       = "AllowSSH"
      priority                   = 1000
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}
