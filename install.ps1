param(
    [ValidateSet("auto", "claude", "cursor", "windsurf", "antigravity")]
    [string]$Target = "auto"
)

$ErrorActionPreference = "Stop"
$SkillsSrc = Join-Path $PSScriptRoot "skills"

function Install-SkillSet {
    param([string]$DestDir, [string]$Mode)
    New-Item -ItemType Directory -Force -Path $DestDir | Out-Null
    foreach ($dir in (Get-ChildItem -Path $SkillsSrc -Directory)) {
        $srcFile = Join-Path $dir.FullName "SKILL.md"
        if (-not (Test-Path $srcFile)) { continue }
        if ($Mode -eq "folder") {
            $skillDest = Join-Path $DestDir $dir.Name
            New-Item -ItemType Directory -Force -Path $skillDest | Out-Null
            $targetFile = Join-Path $skillDest "SKILL.md"
        } else {
            $targetFile = Join-Path $DestDir "$($dir.Name).$Mode"
        }
        if (-not (Test-Path $targetFile)) {
            Copy-Item -LiteralPath $srcFile -Destination $targetFile
            Write-Host "[+] Installed $targetFile" -ForegroundColor Green
        } else {
            Write-Host "[=] Skipped existing $targetFile" -ForegroundColor Yellow
        }
    }
}

$targets = if ($Target -eq "auto") { @("claude", "cursor", "windsurf") } else { @($Target) }
foreach ($t in $targets) {
    switch ($t) {
        "claude"      { Install-SkillSet -DestDir ".claude\skills" -Mode "folder" }
        "cursor"      { Install-SkillSet -DestDir ".cursor\rules" -Mode "mdc" }
        "windsurf"    { Install-SkillSet -DestDir ".windsurf\rules" -Mode "md" }
        "antigravity" { Install-SkillSet -DestDir (Join-Path $HOME ".gemini\config\skills") -Mode "folder" }
    }
}

Write-Host "`n[Done] Drop .mcp.json into your workspace root and claim free Community API Keys:" -ForegroundColor Cyan
Write-Host "  - DataCastle: https://datacastle.eu/open"
Write-Host "  - Supernova & CyberAgents: https://supernova.cool/open | https://cyberagents.app/open"
Write-Host "  - WSP Hub: https://wsphub.dev/open"
