BeforeAll {
  Import-Module Az.InfrastructureTesting

  $rgName = 'rg-test'
  $workSpaceName = 'samplesynws'
  $location = 'westus3'
}

Describe 'Verify Synapse Workspace' {
  It 'Should contain a Synapse Workspace with the given name - Confirm-AzBPResource' {
    #arrange
    $params = @{
      ResourceType = "SynapseWorkspace"
      ResourceGroupName = $rgName
      ResourceName = $workSpaceName
    }

    #act
    $result = Confirm-AzBPResource @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a Synapse Workspace named $workSpaceName - ConfirmAzBPResource" {
    #arrange
    $params = @{
      ResourceType = "SynapseWorkspace"
      ResourceGroupName = $rgName
      ResourceName = $workSpaceName
      PropertyKey = 'Name'
      PropertyValue = $workSpaceName
    }

    #act
    $result = Confirm-AzBPResource @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a synapse workspace named $workSpaceName" {
    #act
    $result = Confirm-AzBPSynapseWorkspace -ResourceGroupName $rgName -WorkspaceName $workspaceName

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a synapse workspace named $workSpaceName" {
    # Using custom assertion to check if the workspace is deployed
    #act
    $result = Confirm-AzBPSynapseWorkspace -ResourceGroupName $rgName -WorkspaceName $workspaceName

    #assert
    $result | Should -BeDeployed
  }

  It "Should contain a synapse workspace named $workSpaceName in $location" {
    # Using custom assertion to check if the workspace is in the correct location
    #act
    $result = Confirm-AzBPSynapseWorkspace -ResourceGroupName $rgName -WorkspaceName $workspaceName

    #assert
    $result | Should -BeInLocation $location
  }

  It "Should contain a synapse workspace named $workSpaceName in $rgName" {
    # Using custom assertion to check if the workspace is in the correct resource group
    #act
    $result = Confirm-AzBPSynapseWorkspace -ResourceGroupName $rgName -WorkspaceName $workspaceName

    #assert
    $result | Should -BeInResourceGroup $rgName
  }

  It 'Should not contain a synapse workspace named nosamplesynws' {
    #act
    # The '-ErrorAction SilentlyContinue' command suppresses all errors.
    # In this test, it will suppress the error message when a resource cannot be found.
    # Remove this field to see all errors.
    $result = Confirm-AzBPSynapseWorkspace -ResourceGroupName $rgName -WorkspaceName $workspaceName `
      -ErrorAction SilentlyContinue

    #assert
    $result.Success | Should -Be $false
  }
}

Describe 'Verify Synapse Spark/SQL Pool' {
  BeforeAll {
    $sparkPoolName = 'samplespark'
    $sqlPoolName = 'samplesql'
  }

  It 'Should contain a Synapse Spark Pool with the given name - Confirm-AzBPResource' {
    #arrange
    $params = @{
      ResourceType = "SynapseSparkPool"
      ResourceGroupName = $rgName
      WorkspaceName = $workSpaceName
      ResourceName = $sparkPoolName
    }

    #act
    $result = Confirm-AzBPResource @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a Synapse Spark Pool named $sparkPoolName - ConfirmAzBPResource" {
    #arrange
    $params = @{
      ResourceType = "SynapseSparkPool"
      ResourceGroupName = $rgName
      WorkspaceName = $workSpaceName
      ResourceName = $sparkPoolName
      PropertyKey = 'Name'
      PropertyValue = $sparkPoolName
    }

    #act
    $result = Confirm-AzBPResource @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a synapse workspace with a spark pool named $sparkPoolName" {
    #arrange
    $params = @{
      ResourceGroupName    = $rgName
      WorkspaceName        = $workSpaceName
      SynapseSparkPoolName = $sparkPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSparkPool @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a synapse workspace with a spark pool named $sparkPoolName" {
    # Using custom assertion to check if the workspace with spark pool is deployed
    $params = @{
      ResourceGroupName    = $rgName
      WorkspaceName        = $workSpaceName
      SynapseSparkPoolName = $sparkPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSparkPool @params

    #assert
    $result | Should -BeDeployed
  }

  It "Should contain a spark pool in $location" {
    # Using custom assertion to check if the spark pool is in the correct location
    $params = @{
      ResourceGroupName    = $rgName
      WorkspaceName        = $workSpaceName
      SynapseSparkPoolName = $sparkPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSparkPool @params

    #assert
    $result | Should -BeInLocation $location
  }

  It "Should contain a spark pool in $rgName" {
    # Using custom assertion to check if the spark pool is in the correct resource group
    $params = @{
      ResourceGroupName    = $rgName
      WorkspaceName        = $workSpaceName
      SynapseSparkPoolName = $sparkPoolName
    }
    #act
    $result = Confirm-AzBPSynapseSparkPool @params

    #assert
    $result | Should -BeInResourceGroup $rgName
  }

#######################################################################################################################

  It 'Should contain a Synapse SQL Pool with the given name - Confirm-AzBPResource' {
    #arrange
    $params = @{
      ResourceType = "SynapseSqlPool"
      ResourceGroupName = $rgName
      WorkspaceName = $workSpaceName
      ResourceName = $sqlPoolName
    }

    #act
    $result = Confirm-AzBPResource @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a Synapse SQL Pool named $sqlPoolName - ConfirmAzBPResource" {
    #arrange
    $params = @{
      ResourceType = "SynapseSqlPool"
      ResourceGroupName = $rgName
      WorkspaceName = $workSpaceName
      ResourceName = $sqlPoolName
      PropertyKey = 'Name'
      PropertyValue = $sqlPoolName
    }

    #act
    $result = Confirm-AzBPResource @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a synapse workspace with a SQL pool named $sqlPoolName" {
    #arrange
    $params = @{
      ResourceGroupName  = $rgName
      WorkspaceName      = $workSpaceName
      SynapseSqlPoolName = $sqlPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSqlPool @params

    #assert
    $result.Success | Should -Be $true
  }

  It "Should contain a synapse workspace with a SQL pool named $sqlPoolName" {
    # Using custom assertion to check if the workspace with sql pool is deployed
    $params = @{
      ResourceGroupName  = $rgName
      WorkspaceName      = $workSpaceName
      SynapseSqlPoolName = $sqlPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSqlPool @params

    #assert
    $result | Should -BeDeployed
  }

  It "Should contain a SQL pool in $location" {
    # Using custom assertion to check if the sql pool is in the correct location
    $params = @{
      ResourceGroupName  = $rgName
      WorkspaceName      = $workSpaceName
      SynapseSqlPoolName = $sqlPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSqlPool @params

    #assert
    $result | Should -BeInLocation $location
  }

  It "Should contain a SQL pool in $rgName" {
    # Using custom assertion to check if the sql pool is in the correct resource group
    $params = @{
      ResourceGroupName  = $rgName
      WorkspaceName      = $workSpaceName
      SynapseSqlPoolName = $sqlPoolName
    }

    #act
    $result = Confirm-AzBPSynapseSqlPool @params

    #assert
    $result | Should -BeInResourceGroup $rgName
  }
}

AfterAll {
  Get-Module Az-InfrastructureTesting | Remove-Module
  Get-Module BenchPress.Azure | Remove-Module
}
