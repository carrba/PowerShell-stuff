Describe 'Get-SvcDisplayName' {
    Mock -CommandName 'Get-CimInstance -Classname win32_service' -MockWith {
        @{ 
            Name = 'MockService'
            DisplayName = 'MockDisplayName'
        }
    }
    It 'returns the DisplayName of a service' {
        Get-SvcDisplayName 'MockService' | Should -Be 'MockDisplayName'
    }
}