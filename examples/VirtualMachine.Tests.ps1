BeforeAll {
    Import-Module "../BenchPress/Helpers/BenchPress.Azure/BenchPress.Azure.psd1"
}

Describe 'Verify Virtual Machine' {
    it 'Should contain a Virtual Machine with the given name' {
        #arrange
        $rgName = 'rg-test'
        $vmName = 'simpleLinuxVM1'

        #act
        $exists = Get-AzBPVirtualMachine -ResourceGroupName $rgName -VirtualMachineName $vmName

        #assert
        $exists | Should -Not -BeNullOrEmpty
    }
}

Describe 'Verify Virtual Machine Exists' {
    it 'Should contain a Virtual Machine with the given name' {
        #arrange
        $rgName = 'rg-test'
        $vmName = 'simpleLinuxVM1'

        #act
        $exists = Get-AzBPVirtualMachineExist -ResourceGroupName $rgName -VirtualMachineName $vmName

        #assert
        $exists | Should -Be $true
    }
}

Describe 'Spin up , Tear down a Virtual Machine' {
    it 'Should deploy a bicep file.' {
      #arrange
      $resourceGroupName = "rg-test2"
      $bicepPath = "./virtualmachine.bicep"
      $params = @{
        vmName             = "simpleLinuxVM2"
        location           = "westus3"
        adminPasswordOrKey = "<sample-password>"
      }

      #act
      $deployment = Deploy-AzBPBicepFeature -BicepPath $bicepPath -Params $params -ResourceGroupName $resourceGroupName

      #assert
      $deployment.ProvisioningState | Should -Be "Succeeded"

      #clean up
      Remove-AzBPBicepFeature -ResourceGroupName $resourceGroupName
    }
}