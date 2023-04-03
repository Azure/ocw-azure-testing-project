targetScope = 'subscription'

@description('Service Principal Object Id')
param principalId string

var readerRole = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', 'acdd72a7-3385-48ef-bd42-f606fba81ae7')
resource rgReaderRole 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(principalId, readerRole)
  properties: {
    roleDefinitionId: readerRole
    principalType: 'ServicePrincipal'
    principalId: principalId
  }
}
