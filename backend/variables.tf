variable rg_backend_name {
    type = string
    default = "mv-rg-backend-tfstate"
    description = "Name of the resource group for the backend"
}

variable rg_backend_location {
    type = string
    default = "West Europe"
    description = "Location of the resource group for the backend"
}

variable sa_backend_name {
    type = string
    default = "backendsa"
    description = "Name of the storage account for the backend"
}

variable "sc_backend_name" {
    type = string
    default = "tfstate"
    description = "Name of the storage container for the backend"
}

variable "kv_backend_name" {
    type = string
    default = "backendkv"
    description = "Name of the key vault for the backend"
}

variable "sa_backend_accesskey_name" {
    type = string
    default = "sa-backend-accesskey"
    description = "Name of the key vault secret for the backend"
}
