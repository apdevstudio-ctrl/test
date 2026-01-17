# Deployment Guide for Testimonials Page

## Option 1: Deploy to Vercel (Recommended - Fast & Easy)

### Using Vercel CLI:
```bash
npm i -g vercel
vercel login
vercel --prod
```

### Using Vercel Dashboard:
1. Go to https://vercel.com
2. Sign up/Login
3. Click "New Project"
4. Import your Git repository or drag & drop the folder
5. Vercel will auto-detect the settings
6. Click "Deploy"

## Option 2: Deploy to Netlify

### Using Netlify CLI:
```bash
npm install -g netlify-cli
netlify login
netlify deploy --prod
```

### Using Netlify Dashboard:
1. Go to https://netlify.com
2. Sign up/Login
3. Drag & drop your project folder
4. Or connect your Git repository
5. Netlify will auto-deploy

## Option 3: Deploy to GitHub Pages

1. Create a repository on GitHub (e.g., `apdevstudio/testimonials`)
2. Push your code:
```bash
git remote add origin https://github.com/apdevstudio/testimonials.git
git branch -M main
git push -u origin main
```
3. Go to repository Settings → Pages
4. Select source branch (main) and folder (root)
5. Your site will be at: `https://apdevstudio.github.io/testimonials`

## Option 4: Deploy to Custom Server

Upload `index.html` to your web server's public directory.

