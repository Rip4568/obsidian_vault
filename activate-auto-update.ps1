while ($true) {
    Write-Host "Executando o script de atualização..."
    & "$PSScriptRoot\update.ps1" -Comment ""
    Write-Host "Aguardando 30 segundos para a próxima execução..."
    Start-Sleep -Seconds 30
}
