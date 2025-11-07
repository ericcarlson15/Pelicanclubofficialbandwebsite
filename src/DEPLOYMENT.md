# Deployment Guide for Pelican Club OS

## Overview
Your Pelican Club Macintosh site is built with React and can be deployed to various hosting platforms. Here are instructions for the most popular options.

---

## Option 1: Vercel (Recommended - Easiest)

Vercel is perfect for React apps and offers the simplest deployment process.

### Steps:

1. **Export your code from Figma Make**
   - Click the "Export" button in Figma Make
   - Choose "Download as ZIP"
   - Unzip the folder on your computer

2. **Create a GitHub account (if you don't have one)**
   - Go to [github.com](https://github.com)
   - Click "Sign up"
   - Choose a username, enter your email, and create a password
   - Verify your email address

3. **Upload your code to GitHub**
   
   **EASIEST METHOD - Use GitHub Website (No coding required!):**
   
   a. Log into GitHub
   
   b. Click the "+" icon in the top right → "New repository"
   
   c. Name your repository (e.g., "pelican-club-site")
   
   d. Keep it Public (or Private if you prefer)
   
   e. Click "Create repository"
   
   f. On the next page, click "uploading an existing file"
   
   g. Drag and drop ALL your project files into the upload box
      - Important: Upload the actual files, not the folder containing them
      - Make sure to include App.tsx, package.json, components folder, etc.
   
   h. Scroll down and click "Commit changes"
   
   i. Done! Your code is now on GitHub ✅

4. **Create a Vercel account**
   - Go to [vercel.com](https://vercel.com)
   - Click "Sign Up"
   - Choose "Continue with GitHub" (IMPORTANT: Use this option!)
   - Authorize Vercel to access your GitHub

5. **Deploy your project**
   
   a. In Vercel, click "Add New" → "Project"
   
   b. You'll see a list of your GitHub repositories
   
   c. Find "pelican-club-site" (or whatever you named it) and click "Import"
   
   d. Vercel will auto-detect it's a React app - don't change anything!
   
   e. Click "Deploy"
   
   f. Wait 1-2 minutes while it builds...
   
   g. 🎉 Done! Your site is live at `yourproject.vercel.app`
   
   h. Click "Visit" to see your live site!

### Updating Your Site Later:

Once set up, updating is SUPER easy:

1. Go to your GitHub repository
2. Click on the file you want to edit
3. Click the pencil icon (Edit)
4. Make your changes
5. Click "Commit changes"
6. Vercel automatically rebuilds and deploys! (takes 1-2 min)

No complicated commands needed! 🎉

### Configuration:
Vercel auto-detects React apps. A `vercel.json` file is included to ensure proper deployment.

### Troubleshooting Build Errors:

If your deployment fails with errors like "patch-package command not found" or "npm install failed":

**SOLUTION - Override Build Settings in Vercel:**

1. **Go to your Vercel project**
2. **Click Settings → General**
3. **Scroll to "Build & Development Settings"**
4. **Click "Override" next to each setting and enter:**
   - **Framework Preset:** Vite
   - **Build Command:** `npm run build`
   - **Install Command:** `npm install --force`
   - **Output Directory:** `dist`
5. **Click Save**
6. **Go to Deployments tab**
7. **Click on the failed deployment → Three dots (...) → Redeploy**

**Alternative Method - Use Netlify Instead:**
If Vercel continues to fail, Netlify handles Figma Make projects better:
1. Go to [netlify.com](https://netlify.com)
2. Sign up with GitHub
3. Click "Add new site" → "Import an existing project"
4. Connect to GitHub and select your repository
5. Build settings:
   - Build command: `npm run build`
   - Publish directory: `dist`
6. Click Deploy
7. Usually works on first try! ✅

### Custom Domain (Optional):
- In Vercel dashboard → Settings → Domains
- Add your custom domain (costs ~$10-15/year from domain registrars)

### Cost: **FREE** for hobby projects ✅

---

## Option 2: Neocities

Yes, you **can** use this on Neocities, but it requires a build step first.

### Why the extra step?
Neocities hosts static HTML/CSS/JS files. Your React app needs to be "built" (compiled) into static files first.

### Steps:

1. **Build your React app**
   ```bash
   npm install
   npm run build
   ```
   This creates a `dist` or `build` folder with static files.

2. **Upload to Neocities**
   - Log into your Neocities account
   - Go to your site's dashboard
   - Upload **all files** from the `dist`/`build` folder:
     - `index.html`
     - `assets/` folder (contains all JS, CSS, images)
   
   **Important:** Upload the contents of the build folder, not the folder itself!

3. **Configure paths (if needed)**
   - Neocities URLs work differently than local development
   - You may need to adjust asset paths if images don't load
   - Your Figma assets will need to be in the same folder structure

### Neocities Limitations:
- **Max file size:** 50MB total for free tier
- **No automatic deployments:** You must manually rebuild and reupload for changes
- **No server-side features:** Only static content (your app is already static, so this is fine!)

### Build Command for Neocities:
```bash
# Make sure base path is set correctly
npm run build -- --base=/
```

### Cost: **FREE** (up to 50MB) ✅

---

## Option 3: Netlify (Alternative to Vercel)

Very similar to Vercel, great alternative option.

### Steps:
1. Go to [netlify.com](https://netlify.com)
2. Sign up
3. Drag and drop your project folder OR connect to GitHub
4. Deploy!

### Cost: **FREE** for hobby projects ✅

---

## Option 4: GitHub Pages

Free hosting directly from GitHub.

### Steps:
1. Push code to GitHub repository
2. Install GitHub Pages package:
   ```bash
   npm install gh-pages --save-dev
   ```
3. Add to `package.json`:
   ```json
   {
     "homepage": "https://yourusername.github.io/repo-name",
     "scripts": {
       "predeploy": "npm run build",
       "deploy": "gh-pages -d dist"
     }
   }
   ```
4. Deploy:
   ```bash
   npm run deploy
   ```

### Cost: **FREE** ✅

---

## Comparison Chart

| Platform | Ease of Use | Auto-Deploy | Custom Domain | Cost |
|----------|-------------|-------------|---------------|------|
| **Vercel** | ⭐⭐⭐⭐⭐ | ✅ Yes | ✅ Free | FREE |
| **Netlify** | ⭐⭐⭐⭐⭐ | ✅ Yes | ✅ Free | FREE |
| **GitHub Pages** | ⭐⭐⭐⭐ | ✅ Yes | ✅ Free | FREE |
| **Neocities** | ⭐⭐⭐ | ❌ Manual | ✅ Paid only | FREE (50MB) |

---

## Recommended Choice

**For your Pelican Club site: Use Vercel**

Why?
- Easiest setup (literally 2 clicks if using GitHub)
- Automatic deployments when you update code
- Free custom domains
- Free SSL certificates
- Excellent performance
- Perfect for React apps

---

## Need Help?

If you encounter any issues:
1. Check that all images are in the correct folders
2. Ensure all imports are using relative paths
3. Test locally with `npm run dev` before deploying
4. Check the platform's build logs for errors

---

## What You'll Need

Before deploying anywhere:

1. **A GitHub account** (free - see steps above)
2. **All project files** from Figma Make
3. **Image assets** properly organized

---

**Your site is ready to go live! Choose your platform and deploy! 🚀**
