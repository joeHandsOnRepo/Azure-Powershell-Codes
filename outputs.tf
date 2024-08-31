output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.sa.name
}

output "storage_account_primary_location" {
  description = "The primary location of the storage account"
  value       = azurerm_storage_account.sa.primary_location
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "storage_container_name" {
  description = "The name of the storage container"
  value       = azurerm_storage_container.container.name
}

output "storage_blob_name" {
  description = "The name of the storage blob (folder)"
  value       = azurerm_storage_blob.folder.name
}
