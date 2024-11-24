#!/usr/bin/env pwsh
# Usage:
#   .\scripts\setup-hooks.ps1 (execute script)

# Function to enable a specific Git hook by copying its sample file
function Enable-Hook {
    param (
        [Parameter(Mandatory)][string]$HooksDir,
        [Parameter(Mandatory)][string]$HookName
    )

    $TargetHook = Join-Path $HooksDir $HookName
    $TemplateFile = Join-Path $HooksDir "$HookName.sample"

    if (Test-Path $TargetHook) {
        Write-Host "The '$HookName' hook is already enabled. ($TargetHook)" -ForegroundColor Yellow
    } elseif (Test-Path $TemplateFile) {
        Write-Host "Enabling '$HookName' hook..." -ForegroundColor Green
        Move-Item -Path $TemplateFile -Destination $TargetHook -Force
        Write-Host "Template hook copied to $TargetHook." -ForegroundColor Green
    } else {
        Write-Warning "Template for '$HookName' hook not found."
    }
}

# Function to get the Git hooks path
function Get-HooksPath {
    try {
        $GitRoot = git rev-parse --show-toplevel 2>$null
        $HooksPath = git rev-parse --git-path hooks 2>$null

        if ($GitRoot -and $HooksPath) {
            return Join-Path $GitRoot $HooksPath
        }
    } catch {
        Write-Warning "Unable to determine Git hooks path. Ensure this script is run inside a Git repository."
    }

    return ""
}

# Function to check if a command exists
function Command-Exists {
    param ([Parameter(Mandatory)][string]$Command)

    return $null -ne (Get-Command $Command -ErrorAction SilentlyContinue)
}

# Function to install pre-commit hooks
function Install-PreCommitHooks {
    param ([Parameter(Mandatory)][string[]]$HookTypes)

    foreach ($HookType in $HookTypes) {
        Write-Host "Installing '$HookType' pre-commit hook..." -ForegroundColor Cyan
        pre-commit install --hook-type $HookType
    }
}

# Function to install npm dependencies
function Install-NpmDependencies {
    if (Test-Path "package.json") {
        Write-Host "Installing npm dependencies..." -ForegroundColor Cyan
        npm install
    } else {
        Write-Host "No package.json found. Skipping npm dependency installation." -ForegroundColor Yellow
    }
}

# Main Script Execution
Write-Host "Starting setup-hooks script..." -ForegroundColor Cyan

# Check for required commands
if (-not (Command-Exists "pre-commit")) {
    Write-Error "pre-commit is not installed. Please install it first."
    exit 1
}

if ((-not (Command-Exists "npm")) -and (Test-Path "package.json")) {
    Write-Error "npm is not installed. Please install it first."
    exit 1
}

# Install pre-commit hooks
$PreCommitHooks = @("commit-msg", "prepare-commit-msg", "pre-merge-commit", "pre-push")
Install-PreCommitHooks -HookTypes $PreCommitHooks

# Enable additional Git hooks if hook path exists
$HooksDir = Get-HooksPath
if ($HooksDir) {
    Enable-Hook -HooksDir $HooksDir -HookName "pre-rebase"
} else {
    Write-Warning "Git hooks directory not found. Skipping additional hook setup."
}

# Install npm dependencies
Install-NpmDependencies

Write-Host "Setup-hooks script completed successfully." -ForegroundColor Green