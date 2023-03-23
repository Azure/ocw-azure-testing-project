---
external help file: BenchPress.Azure-help.xml
Module Name: BenchPress.Azure
online version:
schema: 2.0.0
---

# Get-AzBPResourceByType

## SYNOPSIS
Gets an Azure Resource.

## SYNTAX

```
Get-AzBPResourceByType [-ResourceName] <String> [[-ResourceGroupName] <String>] [-ResourceType] <ResourceType>
 [[-ServerName] <String>] [[-DataFactoryName] <String>] [[-NamespaceName] <String>] [[-EventHubName] <String>]
 [[-WorkspaceName] <String>] [[-AccountName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzBPResourceByType cmdlet gets an Azure resource depending on the resource type (i.e.
Action Group, Key Vault,
Container Registry, etc.).

## EXAMPLES

### EXAMPLE 1
```
Get-AzBPResourceByType -ResourceType ActionGroup -ResourceName "bpactiongroup" -ResourceGroupName "rgbenchpresstest"
```

### EXAMPLE 2
```
Get-AzBPResourceByType -ResourceType VirtualMachine -ResourceName "testvm" -ResourceGroupName "rgbenchpresstest"
```

## PARAMETERS

### -ResourceName
The name of the Resource

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the Resource Group

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceType
The type of the Resource (currently support the following:
ActionGroup
AksCluster
AppInsights
AppServicePlan
ContainerRegistry
DataFactory
DataFactoryLinkedService
EventHub
EventHubConsumerGroup
EventHubNamespace
KeyVault
ResourceGroup
SqlDatabase
SqlServer
StorageAccount
StorageContainer
StreamAnalyticsCluster
SynapseSparkPool
SynapseSqlPool
SynapseWorkspace
VirtualMachine
WebApp)

```yaml
Type: ResourceType
Parameter Sets: (All)
Aliases:
Accepted values: ActionGroup, AksCluster, AppInsights, AppServicePlan, CosmosDBAccount, CosmosDBGremlinDatabase, CosmosDBMongoDBDatabase, CosmosDBSqlDatabase, ContainerRegistry, DataFactory, DataFactoryLinkedService, EventHub, EventHubConsumerGroup, EventHubNamespace, KeyVault, ResourceGroup, SqlDatabase, SqlServer, StorageAccount, StorageContainer, StreamAnalyticsCluster, StreamAnalyticsFunction, StreamAnalyticsInput, StreamAnalyticsJob, StreamAnalyticsOutput, StreamAnalyticsTransformation, SynapseSparkPool, SynapseSqlPool, SynapseWorkspace, VirtualMachine, WebApp

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
If testing an Azure SQL Database resource, the name of the server to which the database is assigned.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DataFactoryName
If testing an Azure Data Factory Linked Service resource, the name of the data factory to which the linked
service is assigned.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NamespaceName
{{ Fill NamespaceName Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventHubName
{{ Fill EventHubName Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
If testing a resource that belongs to some sort of Azure workspace (i.e.
SQL pool in a Synapse workspace),
the name of the workspace to which the resource is assigned.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccountName
If the Azure resource has an associated account name (e.g., Cosmos DB SQL Database, Storage Container),

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
## OUTPUTS

### ConfirmResult
## NOTES

## RELATED LINKS