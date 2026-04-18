$ErrorActionPreference = "Stop"

if (Test-Path "export") {
    Get-ChildItem "export" -File -Include *.pdf, *.html | Remove-Item -Force
}

Write-Host "Archivos temporales de export eliminados correctamente."