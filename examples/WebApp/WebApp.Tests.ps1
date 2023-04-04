﻿BeforeAll {
  Import-Module ../../bin/BenchPress.Azure.psd1

  $Script:rgName = 'rg-test'
  $Script:location = 'westus3'
}

Describe 'Verify Web App Exists' {
  BeforeAll {
    $Script:webappName = 'azbpwebapptest'
    $Script:noWebAppName = 'noazbpwebapptest'
  }

  It "Should contain a Web App named $webappName - Confirm-AzBPResource" {
    # arrange
    $params = @{
      ResourceType      = "WebApp"
      ResourceGroupName = $rgName
      ResourceName      = $webappName
    }

    # act and assert
    Confirm-AzBPResource @params | Should -BeSuccessful
  }

  It "Should contain a Web App named $webappName - ConfirmAzBPResource" {
    # arrange
    $params = @{
      ResourceType      = "WebApp"
      ResourceGroupName = $rgName
      ResourceName      = $webappName
      PropertyKey       = 'Name'
      PropertyValue     = $webappName
    }

    # act and assert
    Confirm-AzBPResource @params | Should -BeSuccessful
  }

  It "Should contain a Web App named $webappName" {
    Confirm-AzBPWebApp -ResourceGroupName $rgName -WebAppName $webappName | Should -BeSuccessful
  }

  It "Should not contain a Web App named $noWebappName" {
    # The '-ErrorAction SilentlyContinue' command suppresses all errors.
    # In this test, it will suppress the error message when a resource cannot be found.
    # Remove this field to see all errors.
    Confirm-AzBPWebApp -ResourceGroupName $rgName -WebAppName $noWebappName -ErrorAction SilentlyContinue
    | Should -Not -BeSuccessful
  }

  It "Should contain a Web App named $webappName in $location" {
    Confirm-AzBPWebApp -ResourceGroupName $rgName -WebAppName $webappName | Should -BeInLocation $location
  }

  It "Should contain a Web App named $webappName in $rgName" {
    Confirm-AzBPWebApp -ResourceGroupName $rgName -WebAppName $webappName | Should -BeInResourceGroup $rgName
  }
}

Describe 'Verify Web App Static Site Exists' {
  BeforeAll {
    $Script:webappStaticSiteName = 'staticwebapptest'
    $Script:noWebAppStaticSiteName = 'nostaticwebapptest'
  }

  It 'Should contain a Web App Static Site with the given name - Confirm-AzBPResource' {
    # arrange
    $params = @{
      ResourceType = "WebAppStaticSite"
      ResourceGroupName = $rgName
      ResourceName = $webappStaticSiteName
    }

    # act and assert
    Confirm-AzBPResource @params | Should -BeSuccessful
  }

  It "Should contain a Web App Static Site named $webappStaticSiteName - ConfirmAzBPResource" {
    # arrange
    $params = @{
      ResourceType = "WebAppStaticSite"
      ResourceGroupName = $rgName
      ResourceName = $webappStaticSiteName
      PropertyKey = 'Name'
      PropertyValue = $webappStaticSiteName
    }

    # act and assert
    Confirm-AzBPResource @params | Should -BeSuccessful
  }

  It "Should contain a Web App Static Site named $webappStaticSiteName" {
    Confirm-AzBPWebAppStaticSite -ResourceGroupName $rgName -StaticWebAppName $webappStaticSiteName | Should -BeSuccessful
  }

  It 'Should not contain a Web App Static Site with the given name' {
    # The '-ErrorAction SilentlyContinue' command suppresses all errors.
    # In this test, it will suppress the error message when a resource cannot be found.
    # Remove this field to see all errors.
    Confirm-AzBPWebAppStaticSite -ResourceGroupName $rgName -StaticWebAppName $noWebAppStaticSiteName -ErrorAction SilentlyContinue
    | Should -Not -BeSuccessful
  }

  It "Should contain a Web App Static Site named $webappStaticSiteName in $location" {
    Confirm-AzBPWebAppStaticSite -ResourceGroupName $rgName -StaticWebAppName $webappStaticSiteName
    | Should -BeInLocation $location
  }

  It "Should be a Web App Static Site in a resource group named $rgName" {
    Confirm-AzBPWebAppStaticSite -ResourceGroupName $rgName -StaticWebAppName $webappStaticSiteName
    | Should -BeInResourceGroup $rgName
  }
}

AfterAll {
  Get-Module Az.InfrastructureTesting | Remove-Module
  Get-Module BenchPress.Azure | Remove-Module
}
