# ClassicUA Addon Installer
# This script copies addon files to World of Warcraft folder
# Usage: pwsh D:\\dev\\ClassicUA\\dev\\install.ps1 -GameFolder 'C:\Program Files (x86)\World of Warcraft\_classic_'

param(
    [string]$GameFolder
)

if (-not $GameFolder) {
    $GameFolder = "C:\Program Files (x86)\World of Warcraft\_classic_era_"
}

if (-not (Test-Path $GameFolder)) {
    Write-Host "ERROR: Game folder does not exist: $GameFolder" -ForegroundColor Red
    exit 1
}

$addOnsPath = Join-Path $GameFolder "Interface\AddOns"
if (-not (Test-Path $addOnsPath)) {
    Write-Host "ERROR: Interface\AddOns path does not exist: $addOnsPath" -ForegroundColor Red
    Write-Host "This does not appear to be a valid World of Warcraft installation." -ForegroundColor Yellow
    exit 1
}

$scriptFolder = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceFolder = Split-Path -Parent $scriptFolder
$addonDestination = Join-Path $GameFolder "Interface\AddOns\ClassicUA"

Write-Host "ClassicUA Addon Installer" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host "Source: $sourceFolder"
Write-Host "Destination: $addonDestination"
Write-Host ""

if (-not (Test-Path $addonDestination)) {
    Write-Host "Creating destination folder..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $addonDestination -Force | Out-Null
}

$itemsToCopy = @(
    'assets',
    'entries',
    'scripts',
    'ui',
    'ClassicUA*.toc'
)

Write-Host "Copying addon files..." -ForegroundColor Yellow
foreach ($pattern in $itemsToCopy) {
    $sourceItems = Get-Item -Path (Join-Path $sourceFolder $pattern) -ErrorAction SilentlyContinue

    if ($sourceItems) {
        foreach ($item in $sourceItems) {
            Write-Host "  Copying $($item.Name)..." -ForegroundColor Green
            Copy-Item -Path $item.FullName -Destination $addonDestination -Recurse -Force
        }
    } else {
        Write-Host "  WARNING: No items matching pattern '$pattern' found" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host "Addon installed at: $addonDestination" -ForegroundColor Cyan

