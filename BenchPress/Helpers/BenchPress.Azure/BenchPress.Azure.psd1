# Module manifest for module "BenchPress.Azure"
# Generated by: CSEDevOps
# Generated on: 12/1/2022
@{
  ModuleVersion = "0.1"
  GUID = "3db0c6b2-7453-4972-a9de-402be1277ac9"
  Author = "CSEDevOps"
  CompanyName = "Microsoft"
  Copyright = "(c) Microsoft. All rights reserved."
  Description = "Benchpress Test Framework for Azure Deployment Scenarios"
  RequiredModules = @()
  NestedModules = @(
    "ActionGroup.psm1",
    "AKSCluster.psm1",
    "AppServicePlan.psm1",
    "Authentication.psm1",
    "AzureCli.psm1",
    "Bicep.psm1",
    "Common.psm1",
    "ContainerRegistry.psm1",
    "KeyVault.psm1",
    "ResourceGroup.psm1",
    "SqlDatabase.psm1",
    "SqlServer.psm1",
    "VirtualMachine.psm1",
    "WebApp.psm1"
  )
  FunctionsToExport = @(
    "Invoke-AzCli",
    "Confirm-BicepFile",
    "Deploy-BicepFeature",
    "Remove-BicepFeature",
    "Get-ActionGroup",
    "Get-ActionGroupExist",
    "Get-AKSCluster",
    "Get-AKSClusterExist",
    "Get-AppServicePlan",
    "Get-AppServicePlanExist",
    "Get-ContainerRegistry",
    "Get-ContainerRegistryExist",
    "Get-KeyVault",
    "Get-KeyVaultExist",
    "Get-KeyVaultSecret",
    "Get-KeyVaultSecretExist",
    "Get-KeyVaultKey",
    "Get-KeyVaultKeyExist",
    "Get-KeyVaultCertificate",
    "Get-KeyVaultCertificateExist",
    "Get-ResourceByType",
    "Confirm-Resource"
    "Get-Resource",
    "Get-ResourceGroup",
    "Get-ResourceGroupExist",
    "Get-SqlDatabase",
    "Get-SqlDatabaseExist",
    "Get-SqlServer",
    "Get-SqlServerExist",
    "Get-VirtualMachine",
    "Get-VirtualMachineExist",
    "Get-WebApp",
    "Get-WebAppExist"
  )
  PrivateData = @{
    PSData = @{
      Tags = @("Azure", "BenchPress", "Bicep", "ARM", "Test", "ActionGroup", "AKS", "AKSCluster", "ContainerRegistry", "KeyVault", "ResourceGroup", "ServicePlan", "SqlDatabase", "SqlServer", "VirtualMachine", "WebApp")
      LicenseUri = ""
      ProjectUri = "https://github.com/Azure/benchpress/"
      IconUri = ""
      ReleaseNotes = ""
      Prerelease = ""
      RequireLicenseAcceptance = $false
    }
  }
  HelpInfoURI = "https://github.com/Azure/benchpress/"
  DefaultCommandPrefix = "AzBP"
}
