function get-SvcDisplayName($ServiceName) {
    (Get-CimInstance -ClassName  win32_service | 
    Where-Object { $_.Name -eq $ServiceName }).DisplayName
}