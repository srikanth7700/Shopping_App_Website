<#
Build images and run docker-compose (PowerShell)
Usage: Open PowerShell in repo root and run: .\build-and-run.ps1
#>

Write-Host "Building docker images..."
docker compose build

Write-Host "Starting services (detached)..."
docker compose up -d

Write-Host "Listing running containers:"
docker ps --format "table {{.Names}}	{{.Image}}	{{.Ports}}"

Write-Host "Done. Frontend -> http://localhost:3000  Backend -> http://localhost:9090"
