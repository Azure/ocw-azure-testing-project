﻿using module ./../../Classes/ResourceType.psm1

BeforeAll {
  . $PSScriptRoot/../../Public/Confirm-AppServicePlan.ps1
  . $PSScriptRoot/../../Public/Confirm-ResourceGroup.ps1
  . $PSScriptRoot/../../Public/Confirm-SqlDatabase.ps1
  . $PSScriptRoot/../../Public/Confirm-SqlServer.ps1
  . $PSScriptRoot/../../Public/Confirm-VirtualMachine.ps1
  . $PSScriptRoot/../../Public/Confirm-WebApp.ps1
  . $PSScriptRoot/../../Public/Get-ResourceByType.ps1
}

Describe "Get-ResourceByType" {
  Context "unit tests" -Tag "Unit" {
    BeforeEach {
      Mock Confirm-ResourceGroup{}
      Mock Confirm-AppServicePlan{}
      Mock Confirm-SqlDatabase{}
      Mock Confirm-SqlServer{}
      Mock Confirm-VirtualMachine{}
      Mock Confirm-WebApp{}
    }

    It "Calls <expected> when [ResourceType]::<resourceType> is used" -TestCases @(
      @{ ResourceType = [ResourceType]::ResourceGroup; Expected = "Confirm-ResourceGroup"}
      @{ ResourceType = [ResourceType]::AppServicePlan; Expected = "Confirm-AppServicePlan"}
      @{ ResourceType = [ResourceType]::SqlDatabase; Expected = "Confirm-SqlDatabase"}
      @{ ResourceType = [ResourceType]::SqlServer; Expected = "Confirm-SqlServer"}
      @{ ResourceType = [ResourceType]::VirtualMachine; Expected = "Confirm-VirtualMachine"}
      @{ ResourceType = [ResourceType]::WebApp; Expected = "Confirm-WebApp"}
    ) {
      Get-ResourceByType -ResourceName resource -ResourceGroupName group -ResourceType $ResourceType -ServerName server
      Should -Invoke -CommandName $Expected -Times 1
    }
  }
}

AfterAll {
}
