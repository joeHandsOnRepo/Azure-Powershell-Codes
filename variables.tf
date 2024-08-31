variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location where the resources will be created"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account. It must be globally unique."
  type        = string
  default     = "mystorageaccount123"
}

variable "tags" {
  description = "Tags to be applied to the resources"
  type        = map(string)
  default     = {
    environment = "dev"
    project     = "myProject"
  }
}

variable "storage_container_name" {
  description = "The name of the storage container within the storage account"
  type        = string
  default     = "backup"
}

variable "blob_name" {
 
