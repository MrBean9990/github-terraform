###### LOCATION VARIABLES ######
variable "kv_location" {
  type        = string
  description = "location of the Key Vault"
  default     = "westeurope"
}

variable "sa_location" {
  type        = string
  description = "The Azure region where resources will be created"
  default     = "westeurope"
}



###### RESOURCE GROUP LOCATION VARIABLES ######
variable "vnet_rg_location" {
  type        = string
  description = "Resource group location"
  default     = "westeurope"
}

variable "vm_rg_location" {
  type        = string
  description = "Resource group location"
  default     = "westeurope"
}



###### KEY VAULT VARIABLES ######
variable "kv_base_name" {
  type        = string
  description = "Name of the Key Vault"
  default     = "keyy"
}



###### NETWORK VARIABLES ######
variable "vnet_name" {
  type        = string
  description = "Virtual network name"
  default     = "vnet2"
}

variable "nsg_name" {
  type        = string
  description = "Network security group name"
  default     = "nsg"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = "subnet"
}




###### STORAGE ACCOUNT VARIABLES ######
variable "sa_base_name" {
  type        = string
  description = "The name of the storage account"
  default     = "sabn"
}

variable "sa_container_name" {
  type        = string
  description = "The name of the storage container"
  default     = "sacn"
}



###### VM VARIABLES ######
variable "vm_nic_name" {
  type        = string
  description = "Network interface name"
  default     = "nic"
}

variable "vm_name" {
  type        = string
  description = "Virtual machine name"
  default     = "vm"
}

variable "pip_name" {
  type        = string
  description = "public IP name"
  default     = "pip"
}

variable "vm_username" {
  type        = string
  description = "Virtual machine username"
  sensitive   = true
  default     = "azureuser"
}

variable "vm_password" {
  type        = string
  description = "Virtual machine password"
  sensitive   = true
  default     = "d2fSD_!EfdX12tPassWORD1"
}



####### RG VARIABLE ######
variable "rg_name" {
  type        = string
  description = "Name of the Azure Resource Group where resources will be created."
  default     = "mv-rg-oblig2"
}


