targetScope = 'resourceGroup'

param name string = 'oiw${take(uniqueString(subscription().id), 5)}'
param location string = resourceGroup().location

resource symbolicname 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: name
  location: location
}
