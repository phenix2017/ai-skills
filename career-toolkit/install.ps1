param(
    [string]$Destination = (Join-Path $env:USERPROFILE ".codex\skills\career-toolkit")
)

$ErrorActionPreference = "Stop"

$source = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Test-Path (Join-Path $source "SKILL.md"))) {
    throw "Run this installer from the Career-Toolkit folder."
}

if (Test-Path $Destination) {
    $backup = "$Destination.backup-$(Get-Date -Format yyyyMMdd-HHmmss)"
    Move-Item -LiteralPath $Destination -Destination $backup
    Write-Host "Existing installation moved to: $backup"
}

New-Item -ItemType Directory -Path (Split-Path -Parent $Destination) -Force | Out-Null
Copy-Item -LiteralPath $source -Destination $Destination -Recurse -Force

Write-Host ""
Write-Host "Installed Career Toolkit." -ForegroundColor Green
Write-Host "Destination: $Destination"
Write-Host "Entrypoint:  $(Join-Path $Destination "SKILL.md")"


