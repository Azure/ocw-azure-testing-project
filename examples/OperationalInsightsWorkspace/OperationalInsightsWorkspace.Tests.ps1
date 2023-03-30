﻿BeforeAll {
  Import-Module Az.InfrastructureTesting

  $Script:rgName = 'rg-test'
  $Script:oiwName = 'oiwName'
  $Script:location = 'westus3'
}

Describe 'Verify Operational Insights Workspace Exists' {
  BeforeAll {
    $Script:noOiwName = 'noOiwName'
  }

  It 'Should contain a Operational Insights Workspace with given name - Confirm-AzBPResource' {
    #arrange
    $params = @{
      ResourceType      = "OperationalInsightsWorkspace"
      ResourceGroupName = $rgName
      ResourceName      = $oiwName
    }

    #act
    Confirm-AzBPResource @params | Should -BeSuccessful
  }


  It 'Should contain a Operational Insights Workspace with expected property name - Confirm-AzBPResource' {
    #arrange
    $params = @{
      ResourceType      = "OperationalInsightsWorkspace"
      ResourceGroupName = $rgName
      ResourceName      = $oiwName
      PropertyKey       = 'Name'
      PropertyValue     = $oiwName
    }

    #act
    Confirm-AzBPResource @params | Should -BeSuccessful
  }

  It "Should contain a Operational Insights Workspace named $oiwName" {
    Confirm-AzBPOperationalInsightsWorkspace -ResourceGroupName $rgName -Name $oiwName | Should -BeSuccessful
  }

  It "Should not contain an Operational Insights Workspace named $noOiwName" {
    # The '-ErrorAction SilentlyContinue' command suppresses all errors.
    # In this test, it will suppress the error message when a resource cannot be found.
    # Remove this field to see all errors.
    $params = @{
      ResourceGroupName = $rgName
      Name = $noOiwName
    }

    Confirm-AzBPOperationalInsightsWorkspace @params -ErrorAction SilentlyContinue | Should -Not -BeSuccessful
  }

  It "Should contain a Operational Insights Workspace named $oiwName in $location" {
    Confirm-AzBPOperationalInsightsWorkspace -ResourceGroupName $rgName -Name $oiwName | Should -BeInLocation $location
  }

  It "Should be a Operational Insights Workspace in a resource group named $rgName" {
    Confirm-AzBPOperationalInsightsWorkspace -ResourceGroupName $rgName -Name $oiwName | Should -BeInResourceGroup $rgName
  }
}

AfterAll {
  Get-Module Az.InfrastructureTesting | Remove-Module
  Get-Module BenchPress.Azure | Remove-Module
}
