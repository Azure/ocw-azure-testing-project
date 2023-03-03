# How To Run KeyVault.Tests.ps1

`KeyVault.Tests.ps1` contains examples of using the `Confirm-AzBPKeyVault`, `Confirm-AzBPKeyVaultKey`,
and `Confirm-AzBPKeyVaultSecret` cmdlets.

## Pre-Requisites

- An Azure subscription to deploy resources to
- A resource group deployed to the Azure subscription
- A [service principal][1] with a client secret created that has contributor access on the Azure subscription

[1]: <https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal>

## Steps

1. Follow the [installation guide](../../docs/installation.md) to install `Az-InfrastructureTest` from the PowerShell
Gallery or from a local copy.
1. Follow the Setting Up section in the [getting started guide](../../docs/getting_started.md) to configure the
required environment variables.
1. Navigate to KeyVault directory:

   ```Powershell
   cd examples\KeyVault\
   ```

1. Add a Key Vault access policy for your service principal in `keyVault.bicep`:

   ```bicep
   objectId: 'your-service-principal-oid'
   ```

1. Deploy the Key Vault to your resource group:

   ```Powershell
    New-AzResourceGroupDeployment -ResourceGroupName "<your-resource-group-name>"`
    -TemplateFile ".\keyVault.bicep"
   ```

1. When prompted in your terminal, set the `svcPrincipalObjectId` parameter with your service principal's object ID.

1. Update `KeyVault.Tests.ps1` variables to point to your expected resources:

   - `rg-test` -> `your-resource-group-name`
   - `kvbenchpresstest` -> `your-key-vault-name`

1. If using a local copy of `Az-InfrastructureTest`, replace `Import-Module Az-InfrastructureTest` with
`Import-Module "../../bin/BenchPress.Azure.psd1"`.

1. Run `KeyVault.Tests.ps1`:

   ```Powershell
   Invoke-Pester -Path .\KeyVault.Tests.ps1
   ```

1. Success!

   ```Powershell
   Tests completed in 3.03s
   Tests Passed: 4, Failed: 0, Skipped: 0 NotRun: 0
   ```

1. Don't forget to delete any deployed resources that are no longer needed.