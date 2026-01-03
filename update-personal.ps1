param (
    [Alias('c')]
    [string]$Comment
)

# Lê o arquivo .env para determinar a conta SSH a ser usada
$envFilePath = "$PSScriptRoot\.env"
$sshHost = "github.com"  # Conta padrão

if (Test-Path $envFilePath) {
    $envDict = @{}
    Get-Content $envFilePath | ForEach-Object {
        if ($_ -match "=") {
            $key, $value = $_.Split('=', 2)
            $envDict[$key.Trim()] = $value.Trim()
        }
    }

    if ($envDict.ContainsKey("GIT_ACCOUNT")) {
        $sshHost = "github-$($envDict["GIT_ACCOUNT"])"
	} else {
		$sshHost = "github.com"
	}
}

Write-Host "Usando a conta SSH: $sshHost"

# Atualiza o repositório
git pull

# Define o comentário do commit
# Se o script foi chamado sem o parâmetro -Comment, solicita ao usuário.
if (-not $PSBoundParameters.ContainsKey('Comment')) {
    $Comment = Read-Host "Digite um comentário para o commit (pressione Enter para usar padrão)"
}

# Se o comentário ainda estiver vazio (usuário pressionou Enter ou -Comment foi passado em branco), usa o padrão.
if ([string]::IsNullOrWhiteSpace($Comment)) {
    $Comment = "atualização: $(Get-Date -Format 'dd/MM/yyyy HH:mm')"
}

# Adiciona alterações, faz commit e realiza push
git add .
git commit -m "$Comment"
git push "ssh://$sshHost/orchesall/orchestall_vault_obsidian.git"
