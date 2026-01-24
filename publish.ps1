# TOGAF Skill Publishing Script
# This script publishes the TOGAF skill to GitHub and OpenSkills

param(
    [string]$Version = "1.0.0",
    [switch]$SkipGit = $false,
    [switch]$SkipOpenSkills = $false
)

$ErrorActionPreference = "Stop"

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  TOGAF Skill Publishing Script" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Get script directory
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

Write-Host "Working directory: $ScriptDir" -ForegroundColor Gray

# Validate required files
Write-Host "`nValidating required files..." -ForegroundColor Yellow

$requiredFiles = @(
    "README.md",
    "SKILL.md",
    "EXAMPLES.md",
    "package.json",
    "LICENSE"
)

$missingFiles = @()
foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missingFiles += $file
    }
}

if ($missingFiles.Count -gt 0) {
    Write-Host "ERROR: Missing required files:" -ForegroundColor Red
    $missingFiles | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
    exit 1
}

Write-Host "All required files present." -ForegroundColor Green

# Update version in package.json
Write-Host "`nUpdating version to $Version..." -ForegroundColor Yellow

$packageJson = Get-Content "package.json" -Raw | ConvertFrom-Json
$packageJson.version = $Version
$packageJson.skill.version = $Version
$packageJson | ConvertTo-Json -Depth 10 | Set-Content "package.json" -Encoding UTF8

Write-Host "Version updated in package.json" -ForegroundColor Green

# Git operations
if (-not $SkipGit) {
    Write-Host "`n--- Git Operations ---" -ForegroundColor Cyan
    
    # Check if git repo exists, if not initialize
    if (-not (Test-Path ".git")) {
        Write-Host "Initializing git repository..." -ForegroundColor Yellow
        git init
        if ($LASTEXITCODE -ne 0) {
            Write-Host "ERROR: Failed to initialize git repository" -ForegroundColor Red
            exit 1
        }
    }
    
    # Check git config
    $gitUserName = git config user.name 2>$null
    $gitUserEmail = git config user.email 2>$null
    
    if ([string]::IsNullOrEmpty($gitUserName) -or [string]::IsNullOrEmpty($gitUserEmail)) {
        Write-Host "WARNING: Git user identity not configured." -ForegroundColor Yellow
        Write-Host "Please configure with:" -ForegroundColor Yellow
        Write-Host "  git config user.name 'Your Name'" -ForegroundColor Gray
        Write-Host "  git config user.email 'your@email.com'" -ForegroundColor Gray
        
        $continue = Read-Host "Would you like to continue without git operations? (y/n)"
        if ($continue -ne "y" -and $continue -ne "Y") {
            exit 1
        }
        $SkipGit = $true
    }
    
    if (-not $SkipGit) {
        # Add all files
        Write-Host "Adding files to git..." -ForegroundColor Yellow
        git add -A
        
        # Commit
        Write-Host "Creating commit..." -ForegroundColor Yellow
        $commitMessage = "Release v$Version - TOGAF Enterprise Architecture Skill"
        git commit -m $commitMessage
        
        if ($LASTEXITCODE -ne 0) {
            Write-Host "WARNING: Git commit failed or nothing to commit" -ForegroundColor Yellow
        } else {
            Write-Host "Commit created successfully" -ForegroundColor Green
        }
        
        # Check if HEAD exists before tagging
        $headExists = git rev-parse HEAD 2>$null
        if ($LASTEXITCODE -eq 0) {
            # Create tag
            Write-Host "Creating git tag v$Version..." -ForegroundColor Yellow
            git tag -a "v$Version" -m "Version $Version" 2>$null
            
            if ($LASTEXITCODE -eq 0) {
                Write-Host "Tag v$Version created" -ForegroundColor Green
            } else {
                Write-Host "WARNING: Tag may already exist" -ForegroundColor Yellow
            }
        } else {
            Write-Host "WARNING: No commits exist yet, skipping tag creation" -ForegroundColor Yellow
        }
        
        # Push to remote
        $remoteUrl = git remote get-url origin 2>$null
        if (-not [string]::IsNullOrEmpty($remoteUrl)) {
            $push = Read-Host "Push to remote ($remoteUrl)? (y/n)"
            if ($push -eq "y" -or $push -eq "Y") {
                Write-Host "Pushing to remote..." -ForegroundColor Yellow
                git push origin master --tags
                
                if ($LASTEXITCODE -eq 0) {
                    Write-Host "Pushed successfully" -ForegroundColor Green
                } else {
                    Write-Host "WARNING: Push failed. You may need to set up remote or authenticate." -ForegroundColor Yellow
                }
            }
        } else {
            Write-Host "No remote configured. To add a remote:" -ForegroundColor Yellow
            Write-Host "  git remote add origin https://github.com/deeparchi/togaf-skill.git" -ForegroundColor Gray
        }
    }
}

# OpenSkills publishing
if (-not $SkipOpenSkills) {
    Write-Host "`n--- OpenSkills Publishing ---" -ForegroundColor Cyan
    
    # Check if npx is available
    $npxPath = Get-Command npx -ErrorAction SilentlyContinue
    if (-not $npxPath) {
        Write-Host "WARNING: npx not found. Please install Node.js to publish to OpenSkills." -ForegroundColor Yellow
    } else {
        $publishToOpenSkills = Read-Host "Publish to OpenSkills? (y/n)"
        if ($publishToOpenSkills -eq "y" -or $publishToOpenSkills -eq "Y") {
            Write-Host "Publishing to OpenSkills..." -ForegroundColor Yellow
            
            # Note: This is a placeholder for actual OpenSkills publishing
            # The actual command may vary based on OpenSkills CLI
            Write-Host "To publish manually, run:" -ForegroundColor Yellow
            Write-Host "  npx openskills publish" -ForegroundColor Gray
            
            # Attempt to publish
            try {
                npx openskills publish
                Write-Host "Published to OpenSkills successfully" -ForegroundColor Green
            } catch {
                Write-Host "WARNING: OpenSkills publishing failed. Please publish manually." -ForegroundColor Yellow
            }
        }
    }
}

# Summary
Write-Host "`n================================================" -ForegroundColor Cyan
Write-Host "  Publishing Complete" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Skill: togaf" -ForegroundColor White
Write-Host "Version: $Version" -ForegroundColor White
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Verify the skill works: npx openskills read togaf" -ForegroundColor Gray
Write-Host "  2. Update AGENTS.md if needed" -ForegroundColor Gray
Write-Host "  3. Test with Claude: 'Use togaf skill to...'" -ForegroundColor Gray
Write-Host ""
