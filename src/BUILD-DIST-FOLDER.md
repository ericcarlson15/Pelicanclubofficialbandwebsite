# How to Build Your Dist Folder - Step by Step

## Step 1: Find Your Project Folder

First, you need to know WHERE your project is saved on your computer.

**Option A - If you know where it is:**
- It's probably on your Desktop or in Documents
- The folder name might be something like `pelican-club-os` or `figma-make-project`

**Option B - If you don't know where it is:**
1. Open **Finder**
2. Press **Command + F** to search
3. Search for: `package.json`
4. Look for the one in your Pelican Club project folder
5. Note the folder path

---

## Step 2: Open Terminal

1. Open **Terminal** (use Spotlight: press **Command + Space**, type "Terminal")
2. You'll see a command prompt like: `YourName@MacBook ~ %`

---

## Step 3: Navigate to Your Project

**IMPORTANT:** Replace `/path/to/your/project` with your actual project location!

### If your project is on the Desktop:
```bash
cd ~/Desktop/pelican-club-os
```

### If it's in Documents:
```bash
cd ~/Documents/pelican-club-os
```

### If it's somewhere else:
```bash
# Option 1: Type cd and a space, then drag your project folder into Terminal
cd [drag folder here]

# Option 2: Type the full path
cd /Users/ericasellum/path/to/pelican-club-os
```

---

## Step 4: Verify You're in the Right Place

```bash
ls
```

You should see these files listed:
- package.json
- App.tsx
- vite.config.ts
- index.html
- components/
- styles/

**If you DON'T see these files, you're in the wrong folder!** Go back to Step 3.

---

## Step 5: Install Dependencies

```bash
npm install
```

**What you'll see:**
- Lots of text scrolling
- "added X packages" at the end
- This takes 1-3 minutes
- A `node_modules` folder will be created

**If you get an error:**
- "npm: command not found" = You need to install Node.js first
  - Go to: https://nodejs.org
  - Download and install the LTS version
  - Close and reopen Terminal
  - Try again

---

## Step 6: Build Your Site

```bash
npm run build
```

**What you'll see:**
- "vite v4.x.x building for production..."
- Green checkmarks ✓
- "built in XXXms"
- Success message

**This creates the `dist` folder!**

---

## Step 7: Verify the Dist Folder Exists

```bash
ls -la dist
```

You should see:
- index.html
- assets/ (folder with JS and CSS files)
- Other files

**Or just open Finder:**
1. Open Finder
2. Navigate to your project folder
3. You should see a new **`dist`** folder
4. Open it - it has `index.html` and an `assets` folder inside

---

## Step 8: You're Ready to Deploy!

Your `dist` folder is ready! Now you can:

### Deploy to Netlify (Easiest):
1. Go to: https://app.netlify.com/drop
2. **Drag the entire `dist` folder** onto the page
3. Wait 10 seconds
4. Your site is live!

### Deploy to Vercel:
1. Go to: https://vercel.com
2. Sign in
3. Click "Add New" → "Project"
4. Drag the `dist` folder or connect GitHub

---

## Common Issues & Solutions

### ❌ "npm: command not found"
**Fix:** Install Node.js from https://nodejs.org

### ❌ "ENOENT: no such file or directory, open 'package.json'"
**Fix:** You're in the wrong folder. Go back to Step 3 and make sure you `cd` into your project folder.

### ❌ Build fails with errors
**Fix:** 
```bash
# Delete node_modules and try again
rm -rf node_modules
npm install
npm run build
```

### ❌ "Permission denied"
**Fix:** 
```bash
sudo npm install
# Enter your Mac password when prompted
```

### ❌ Dist folder is empty
**Fix:** Look at the build output - there should be error messages explaining what went wrong

---

## Quick Reference - Complete Workflow

```bash
# 1. Navigate to project
cd ~/Desktop/pelican-club-os

# 2. Verify location
ls

# 3. Install dependencies
npm install

# 4. Build
npm run build

# 5. Check dist folder
ls dist

# Done! Deploy the dist folder to Netlify
```

---

## Screenshots of What Success Looks Like

### After `npm install`:
```
added 234 packages, and audited 235 packages in 45s
```

### After `npm run build`:
```
vite v4.4.9 building for production...
✓ 1234 modules transformed.
dist/index.html                   0.45 kB
dist/assets/index-a1b2c3d4.css    12.34 kB
dist/assets/index-e5f6g7h8.js     145.67 kB
✓ built in 2.34s
```

---

## Need Help?

If you get stuck at any step:
1. Take a screenshot of the error
2. Note which step you're on
3. Share the output of: `pwd` (shows current directory)
