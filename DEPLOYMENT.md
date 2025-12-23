# GitHub Pages Deployment Guide

This guide explains how to deploy the Awesome Y Combinator site to GitHub Pages.

## Automatic Deployment (Recommended)

The site is configured to automatically deploy to GitHub Pages when changes are pushed to the `main` branch.

### Setup Steps

1. **Enable GitHub Pages in Repository Settings**
   - Go to your repository on GitHub
   - Click "Settings" → "Pages"
   - Under "Source", select "GitHub Actions"
   - Save the settings

2. **Push to Main Branch**
   ```bash
   git push origin main
   ```

3. **Check Deployment Status**
   - Go to "Actions" tab in your repository
   - Watch the deployment workflow run
   - Once complete, your site will be live at:
     `https://[username].github.io/awesome-y-combinator/`

### What Happens Automatically

The `.github/workflows/deploy.yml` workflow:
- ✅ Triggers on push to `main` branch
- ✅ Checks out the repository
- ✅ Configures GitHub Pages
- ✅ Uploads the site files
- ✅ Deploys to GitHub Pages

No build step needed! Docsify renders markdown in real-time in the browser.

## Manual Deployment (Alternative)

If you prefer manual deployment:

1. **Enable GitHub Pages**
   - Go to Settings → Pages
   - Select "Deploy from a branch"
   - Choose `main` branch and `/` (root) folder
   - Save

2. **Site Will Be Live**
   - No additional steps needed
   - GitHub Pages will serve the files directly
   - Visit: `https://[username].github.io/awesome-y-combinator/`

## Local Development

Test the site locally before deploying:

```bash
# Install docsify-cli (one time)
npm install -g docsify-cli

# Serve the site locally
docsify serve .

# Open http://localhost:3000
```

Changes to markdown files are reflected immediately - just refresh your browser!

## Custom Domain (Optional)

To use a custom domain:

1. **Add CNAME File**
   ```bash
   echo "yourdomain.com" > CNAME
   git add CNAME
   git commit -m "Add custom domain"
   git push
   ```

2. **Configure DNS**
   - Add a CNAME record pointing to: `[username].github.io`
   - Or A records pointing to GitHub's IPs:
     - 185.199.108.153
     - 185.199.109.153
     - 185.199.110.153
     - 185.199.111.153

3. **Update GitHub Settings**
   - Go to Settings → Pages
   - Add your custom domain
   - Enable "Enforce HTTPS"

## Troubleshooting

### Site Not Loading

**Problem:** Site shows 404 or doesn't load

**Solutions:**
- Verify GitHub Pages is enabled in Settings
- Check that the workflow completed successfully
- Ensure `index.html` is in the root directory
- Wait a few minutes after first deployment

### Styles Not Loading

**Problem:** Site loads but looks plain

**Solutions:**
- This is normal in test environments with CDN blocks
- On GitHub Pages, CDN resources load correctly
- Verify in browser console for any blocked resources
- Test in an incognito/private window

### Workflow Failures

**Problem:** GitHub Actions workflow fails

**Solutions:**
- Check Actions tab for error details
- Verify repository permissions are correct
- Ensure Pages is enabled in Settings
- Check workflow file syntax

## URLs

Once deployed, your site will be available at:

- **GitHub Pages:** `https://kiara-dev-team.github.io/awesome-y-combinator/`
- **Custom Domain:** (if configured) `https://yourdomain.com`

## Features That Work After Deployment

✅ Full-text search across all content
✅ Responsive mobile/tablet/desktop design
✅ Smooth navigation and scrolling
✅ Syntax highlighting for code
✅ Copy-to-clipboard for code blocks
✅ Image zoom functionality
✅ Emoji support 🚀
✅ Fast page loads (no build required!)

## Security

The site is completely static - no server-side code:
- ✅ No security vulnerabilities from server code
- ✅ Fast and reliable
- ✅ Easy to maintain
- ✅ Free to host on GitHub Pages

## Updating Content

To update the site:

1. Edit markdown files locally
2. Test with `docsify serve .`
3. Commit and push to `main`
4. GitHub Actions deploys automatically
5. Site updates in ~1-2 minutes

## File Structure for Deployment

```
awesome-y-combinator/
├── .github/
│   └── workflows/
│       └── deploy.yml      # Auto-deployment config
├── .nojekyll              # Tells GitHub Pages to skip Jekyll
├── index.html             # Docsify configuration
├── README.md              # Home page content
├── _coverpage.md          # Landing page
├── _sidebar.md            # Navigation menu
├── companies.md           # Content pages
├── resources.md
├── application.md
├── community.md
├── contributing.md
└── license.md
```

All these files are deployed as-is. Docsify loads them dynamically in the browser.

## Performance

Expected performance:
- **First load:** < 2 seconds
- **Navigation:** Instant (no page reload)
- **Search:** Real-time as you type
- **Lighthouse score:** 90+ across all metrics

## Need Help?

- Check [Docsify Documentation](https://docsify.js.org/)
- Review [GitHub Pages Documentation](https://docs.github.com/en/pages)
- Open an issue in the repository

---

**Ready to deploy? Push to main and watch the magic happen! 🚀**
