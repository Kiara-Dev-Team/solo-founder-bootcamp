# Contributing to Awesome Y Combinator

Thank you for your interest in contributing! This project aims to be the most comprehensive and useful resource about Y Combinator.

## How to Contribute

### Ways to Contribute

1. **Add new companies** - Notable YC companies we've missed
2. **Add resources** - Articles, videos, podcasts, books
3. **Update information** - Valuations, acquisitions, IPOs
4. **Fix errors** - Typos, broken links, incorrect data
5. **Improve organization** - Better categorization
6. **Enhance design** - UI/UX improvements

### Contribution Guidelines

#### For Content Contributions

**Quality Standards:**
- ✅ Accurate and up-to-date information
- ✅ Relevant to Y Combinator ecosystem
- ✅ High-quality, valuable resources
- ✅ Proper citations and links
- ❌ Promotional or spam content
- ❌ Duplicate information
- ❌ Unverified claims

**What to Include:**

When adding a company:
```markdown
- **[Company Name](https://website.com)** (Batch) - Industry
  - Brief description
  - Key metrics (valuation, status)
  - Why notable
```

When adding a resource:
```markdown
- **[Resource Title](https://link.com)** by Author
  - Brief description
  - Why it's valuable
  - What you'll learn
```

#### For Technical Contributions

**Code Quality:**
- Clean, readable code
- Follows existing style
- Responsive design
- Browser compatibility
- Accessibility standards

**Testing:**
- Test on multiple browsers
- Test responsive breakpoints
- Check all links work
- Verify no console errors

### Submission Process

1. **Fork the repository**
   ```bash
   git clone https://github.com/Kiara-Dev-Team/awesome-y-combinator.git
   cd awesome-y-combinator
   ```

2. **Create a branch**
   ```bash
   git checkout -b add-new-content
   ```

3. **Make your changes**
   - Edit the relevant `.md` files
   - Follow the existing format
   - Add your content in the appropriate section

4. **Test locally**
   ```bash
   # Install docsify-cli
   npm i docsify-cli -g
   
   # Run locally
   docsify serve .
   
   # Open http://localhost:3000
   ```

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "Add [company/resource name]"
   ```

6. **Push and create PR**
   ```bash
   git push origin add-new-content
   ```
   Then open a Pull Request on GitHub

### Pull Request Guidelines

**PR Title Format:**
- `Add [Company Name] to Top Companies`
- `Update [Company Name] valuation`
- `Add [Resource Type]: [Resource Name]`
- `Fix broken link in [Section]`
- `Improve [Section] organization`

**PR Description Should Include:**
- What you changed and why
- Any relevant context
- Links to sources (for data/claims)
- Screenshots (for UI changes)

**Review Process:**
- PRs are typically reviewed within 2-3 days
- Maintainers may request changes
- Once approved, PRs are merged

## Content Guidelines

### Criteria for Inclusion

**Companies:**
- Must be YC-backed
- Notable in some way:
  - High valuation (unicorn/decacorn)
  - Successful exit (IPO/acquisition)
  - Significant user base
  - Industry impact
  - Open source contribution

**Resources:**
- Directly related to YC or startups
- High quality and valuable
- Freely accessible (or clearly marked if paid)
- Up-to-date and maintained

**Not Included:**
- Generic startup advice (unless YC-specific)
- Paid courses/products (exceptions for notable ones)
- Self-promotional content
- Outdated or abandoned resources

### Writing Style

**Tone:**
- Professional but friendly
- Clear and concise
- Objective and factual
- Encouraging and helpful

**Formatting:**
- Use markdown properly
- Consistent heading levels
- Bullet points for lists
- Bold for emphasis, not italics
- Links on first mention

**Example:**
```markdown
# Section Title

Brief introduction explaining what this section covers.

## Subsection

- **[Item Name](https://link.com)** - Brief description
  - Additional details
  - Why it matters
```

## Technical Setup

### File Structure

```
awesome-y-combinator/
├── index.html          # Docsify configuration
├── README.md           # Home page
├── _coverpage.md       # Landing page
├── _sidebar.md         # Navigation menu
├── companies.md        # YC companies
├── resources.md        # Resources and links
├── application.md      # Application guide
├── community.md        # Community info
├── contributing.md     # This file
└── license.md          # License info
```

### Technologies Used

- **[Docsify](https://docsify.js.org/)** - Documentation site generator
- **Markdown** - Content format
- **GitHub Pages** - Hosting
- **CDN Resources** - Docsify plugins and themes

### Local Development

**Requirements:**
- Node.js and npm (for docsify-cli)
- Modern web browser
- Text editor

**Setup:**
```bash
# Clone repository
git clone https://github.com/Kiara-Dev-Team/awesome-y-combinator.git

# Install docsify globally
npm i docsify-cli -g

# Serve locally
cd awesome-y-combinator
docsify serve .

# Open http://localhost:3000
```

**Making Changes:**
1. Edit `.md` files in your text editor
2. Save and refresh browser to see changes
3. No build step required!

### Adding New Pages

1. Create new `.md` file
2. Add content using markdown
3. Add to `_sidebar.md`:
   ```markdown
   * [Page Name](filename.md)
   ```
4. Link from relevant pages

## Design Guidelines

### Visual Consistency

- Use YC brand colors (orange #ff6600)
- Maintain consistent spacing
- Follow existing component styles
- Mobile-first responsive design

### Accessibility

- Descriptive link text
- Alt text for images
- Proper heading hierarchy
- Sufficient color contrast
- Keyboard navigation support

### Performance

- Minimize external dependencies
- Optimize images
- Use CDN for libraries
- Fast page load times

## Questions or Issues?

### Getting Help

- **Questions:** Open a GitHub Discussion
- **Bugs:** Open a GitHub Issue
- **Ideas:** Open a GitHub Issue with "Enhancement" label

### Communication

- Be respectful and professional
- Provide context and examples
- Be patient with responses
- Help others when you can

## Recognition

Contributors are recognized in several ways:
- Listed in PR history
- GitHub contributor graph
- Community appreciation
- Helping thousands of founders!

## Code of Conduct

### Our Standards

- Be respectful and inclusive
- Welcome newcomers
- Accept constructive criticism
- Focus on what's best for the community
- Show empathy towards others

### Unacceptable Behavior

- Harassment or discrimination
- Trolling or insulting comments
- Political arguments
- Spam or self-promotion
- Publishing others' private information

### Enforcement

Violations may result in:
1. Warning
2. Temporary ban
3. Permanent ban

Report issues to project maintainers.

## License

By contributing, you agree that your contributions will be licensed under the Apache License 2.0.

---

Thank you for contributing to Awesome Y Combinator! 🚀

[← Back to Home](/)
