# Quick Deployment Script for Testimonials Page
Write-Host "=== Testimonials Page Deployment ===" -ForegroundColor Cyan
Write-Host ""

# Check if git is initialized
if (-not (Test-Path .git)) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
    git add .
    git commit -m "Initial commit: Testimonials page"
}

Write-Host "Choose deployment method:" -ForegroundColor Green
Write-Host "1. GitHub Pages (requires GitHub account)"
Write-Host "2. Vercel (requires Vercel account - run: npx vercel login)"
Write-Host "3. Netlify (requires Netlify account - run: npm i -g netlify-cli && netlify login)"
Write-Host ""
$choice = Read-Host "Enter choice (1-3)"

switch ($choice) {
    "1" {
        Write-Host "`nSetting up GitHub Pages..." -ForegroundColor Yellow
        $repoName = Read-Host "Enter GitHub repository name (e.g., testimonials)"
        $username = Read-Host "Enter GitHub username/organization (e.g., apdevstudio)"
        
        Write-Host "`nRun these commands:" -ForegroundColor Cyan
        Write-Host "git remote add origin https://github.com/$username/$repoName.git"
        Write-Host "git branch -M main"
        Write-Host "git push -u origin main"
        Write-Host "`nThen go to: https://github.com/$username/$repoName/settings/pages"
        Write-Host "Select 'main' branch and 'root' folder, then Save"
    }
    "2" {
        Write-Host "`nDeploying to Vercel..." -ForegroundColor Yellow
        npx vercel --prod
    }
    "3" {
        Write-Host "`nDeploying to Netlify..." -ForegroundColor Yellow
        npx netlify-cli deploy --prod
    }
    default {
        Write-Host "Invalid choice" -ForegroundColor Red
    }
}

