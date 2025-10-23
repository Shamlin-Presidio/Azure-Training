@description('Deploys a simple Azure Storage Account')
resource storageAccount 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: 'shamlinstorageacc2'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    supportsHttpsTrafficOnly: true
  }
}
