# GitHub Pages Setup - Step by Step

Follow these steps to deploy your Displate campaign strategy webapp to GitHub Pages.

## 📋 Prerequisites
- Git installed on your computer
- Access to the GitHub repo: https://github.com/mot-displate/brainwall

---

## 🚀 Option 1: Automatic Deployment (Recommended)

### Step 1: Clone and Setup
```bash
# Clone the repo
git clone https://github.com/mot-displate/brainwall.git
cd brainwall

# Copy all files from this deployment package into the repo
# (index.html, .github folder, README.md, .gitignore, etc.)
```

### Step 2: Enable GitHub Pages
1. Go to: https://github.com/mot-displate/brainwall/settings/pages
2. Under **"Build and deployment"**:
   - Source: Select **"GitHub Actions"** from dropdown
3. Click **Save**

### Step 3: Deploy
```bash
# Add all files
git add .

# Commit
git commit -m "Deploy campaign strategy webapp"

# Push to main branch
git push origin main
```

### Step 4: Verify
1. Go to: https://github.com/mot-displate/brainwall/actions
2. Watch the deployment action run (takes ~30 seconds)
3. Once complete, visit: **https://mot-displate.github.io/brainwall/**

✅ Done! Your site is live.

---

## 🔄 Making Updates

Every time you push to `main`, the site automatically redeploys:

```bash
# Edit index.html with your changes
nano index.html  # or use any editor

# Commit and push
git add index.html
git commit -m "Update campaign content"
git push origin main

# Site updates in ~30 seconds
```

---

## 🛠️ Option 2: Manual Deployment

If you prefer manual control without GitHub Actions:

```bash
# Clone the repo
git clone https://github.com/mot-displate/brainwall.git
cd brainwall

# Create and switch to gh-pages branch
git checkout --orphan gh-pages

# Add your index.html
git add index.html
git commit -m "Deploy to GitHub Pages"

# Push to gh-pages branch
git push origin gh-pages
```

Then in GitHub:
1. Settings → Pages
2. Source: **"Deploy from a branch"**
3. Branch: **"gh-pages"** / **"/(root)"**
4. Save

Site will be live at: https://mot-displate.github.io/brainwall/

---

## 🐛 Troubleshooting

### Site shows 404
- Ensure `index.html` is in the root directory
- Check that Pages is enabled in Settings
- Verify the deployment action completed successfully

### Changes not showing
- Hard refresh: `Ctrl+Shift+R` (Windows) or `Cmd+Shift+R` (Mac)
- Wait 1-2 minutes for GitHub's CDN to update
- Check Actions tab for deployment status

### Action fails
- Verify you selected "GitHub Actions" as the source (not "gh-pages branch")
- Check that `.github/workflows/deploy.yml` exists
- Ensure you have write permissions on the repo

### Permission errors when pushing
- Check you're authenticated with GitHub
- Use `git remote -v` to verify the remote URL
- You may need to use a Personal Access Token

---

## 📁 File Checklist

Make sure these files are in your repo:

```
brainwall/
✅ index.html                    # Your webapp
✅ .github/workflows/deploy.yml  # Auto-deployment
✅ README.md                     # Documentation
✅ .gitignore                    # Ignore rules
✅ deploy.sh                     # Quick deploy script
✅ SETUP.md                      # This file
```

---

## 🎯 Quick Commands Reference

```bash
# Clone repo
git clone https://github.com/mot-displate/brainwall.git

# Deploy (first time)
cd brainwall
git add .
git commit -m "Initial deployment"
git push origin main

# Update site
git add index.html
git commit -m "Update content"
git push origin main

# Check deployment status
# Visit: https://github.com/mot-displate/brainwall/actions

# View live site
# Visit: https://mot-displate.github.io/brainwall/
```

---

## 🔗 Important Links

- **Live Site:** https://mot-displate.github.io/brainwall/
- **Repository:** https://github.com/mot-displate/brainwall
- **Settings:** https://github.com/mot-displate/brainwall/settings/pages
- **Actions:** https://github.com/mot-displate/brainwall/actions

---

**Need help?** Check the Actions tab for deployment logs or GitHub's Pages documentation.
