# Displate Brainwall - Campaign Strategy Webapp

Interactive campaign strategy document for Displate's "Make It Stick" campaign.

## 🚀 Deployed at
**https://mot-displate.github.io/brainwall/**

---

## Automatic Deployment (Recommended)

This repo uses GitHub Actions to automatically deploy to GitHub Pages on every push to `main`.

### First-Time Setup:

1. **Enable GitHub Pages:**
   - Go to repo Settings → Pages
   - Under "Build and deployment" → Source: select **"GitHub Actions"**
   - Save

2. **Push this repo:**
   ```bash
   git add .
   git commit -m "Initial commit - campaign strategy webapp"
   git push origin main
   ```

3. **Wait ~30 seconds** for the action to run. Your site will be live at:  
   `https://mot-displate.github.io/brainwall/`

### Making Changes:

Just edit `index.html` and push:
```bash
git add index.html
git commit -m "Update campaign content"
git push
```

The site will automatically redeploy in ~30 seconds.

---

## Manual Deployment (Backup Method)

If you prefer not to use GitHub Actions:

```bash
# Clone the repo
git clone https://github.com/mot-displate/brainwall.git
cd brainwall

# Create gh-pages branch
git checkout --orphan gh-pages

# Add your HTML file as index.html
git add index.html
git commit -m "Deploy to GitHub Pages"

# Push to gh-pages branch
git push origin gh-pages

# Enable Pages in Settings (select gh-pages branch)
```

---

## File Structure

```
brainwall/
├── index.html                    # The campaign strategy webapp
├── .github/
│   └── workflows/
│       └── deploy.yml            # Auto-deployment workflow
└── README.md                     # This file
```

---

## Troubleshooting

**Site not loading?**
- Check Settings → Pages → ensure "GitHub Actions" is selected as source
- Check Actions tab for any failed deployments
- Verify the branch is `main` (not `master`)

**Changes not showing?**
- Hard refresh: `Ctrl+Shift+R` (Windows) or `Cmd+Shift+R` (Mac)
- Check Actions tab to confirm deployment completed
- GitHub Pages can take 1-2 minutes to propagate changes

**404 error?**
- Ensure `index.html` exists in the root directory
- Check the Actions workflow completed successfully
- Verify Pages is enabled in Settings

---

## Tech Stack

- Pure HTML/CSS (no build process required)
- Custom fonts: Space Mono, Outfit
- Displate brand colors and typography
- Responsive design
- GitHub Actions for CI/CD

---

**Last Updated:** 2026-04  
**Maintained by:** Nicola @ Displate
