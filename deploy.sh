#!/bin/bash

# Quick deployment script for Displate Brainwall
# This script helps you deploy the webapp to GitHub Pages

echo "🚀 Displate Brainwall - GitHub Pages Deployment"
echo "================================================"
echo ""

# Check if we're in a git repo
if [ ! -d .git ]; then
    echo "❌ Not a git repository. Initializing..."
    git init
    git remote add origin https://github.com/mot-displate/brainwall.git
fi

# Check if index.html exists
if [ ! -f index.html ]; then
    echo "❌ index.html not found!"
    echo "   Make sure your HTML file is named 'index.html'"
    exit 1
fi

echo "✅ Found index.html"
echo ""

# Stage all files
echo "📦 Staging files..."
git add .

# Commit
read -p "Enter commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update campaign strategy webapp"
fi

git commit -m "$commit_msg"

# Push
echo ""
echo "🚢 Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Done! Your site will be live in ~30 seconds at:"
echo "   https://mot-displate.github.io/brainwall/"
echo ""
echo "💡 Tip: Check the Actions tab on GitHub to monitor deployment"
