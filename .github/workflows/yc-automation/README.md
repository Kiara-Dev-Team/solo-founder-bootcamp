# YC Automation Workflows

This directory contains reusable GitHub Actions workflows that simulate the Y Combinator partner experience for solo founders and small teams.

## 📁 Workflows Included

### 1. `weekly-checkin.yml`
**Purpose:** Weekly founder check-ins (simulates YC weekly dinners)

**Schedule:** Every Monday at 9 AM UTC

**What it does:**
- Creates a structured check-in issue
- Tracks progress, metrics, and blockers
- Analyzes last week's activity
- Provides automated feedback

**Trigger:** 
```yaml
schedule:
  - cron: '0 9 * * 1'  # Every Monday
workflow_dispatch:  # Manual trigger
```

---

### 2. `partner-advice.yml`
**Purpose:** Automated guidance based on repository patterns

**Triggers:** 
- Pull request opened
- Issues labeled
- Manual dispatch

**What it does:**
- Analyzes commit frequency
- Checks for user feedback tracking
- Monitors metrics updates
- Provides contextual advice
- Comments on PRs with suggestions

**Example Advice:**
- "Ship faster! Low commit activity detected."
- "Not enough user conversations. Talk to 5+ users per week."
- "Create METRICS.md to track your key numbers."

---

### 3. `demo-day-prep.yml`
**Purpose:** Launch and milestone preparation

**Schedule:** Every Monday at 10 AM UTC

**What it does:**
- Creates comprehensive launch checklist
- Tracks milestone progress
- Provides phase-specific guidance
- Countdown to target date

**Checklist Categories:**
- Product polish
- Metrics & data
- Pitch & presentation
- Online presence
- Marketing & launch
- Technical readiness
- Business basics

---

### 4. `metrics-tracking.yml`
**Purpose:** Automated metrics monitoring and alerts

**Schedule:** Every Friday at 5 PM UTC

**Triggers:**
- Scheduled weekly
- Push to METRICS.md
- Manual dispatch

**What it does:**
- Reads metrics from METRICS.md
- Calculates growth rates
- Compares to YC benchmarks
- Sends alerts for critical issues
- Provides growth insights

**Alerts on:**
- Negative growth (critical)
- Stagnant growth < 5% (warning)
- Strong growth > 20% (positive)

---

## 🚀 Quick Start

### For This Repository (Example/Demo)

The workflows in this directory are **examples**. They don't run automatically here but can be tested manually.

### For Your Private Repository

**Step 1:** Copy workflows to your repo
```bash
# Clone this repo
git clone https://github.com/Kiara-Dev-Team/awesome-y-combinator.git

# Copy to your repo
cd your-repo
cp -r ../awesome-y-combinator/.github/workflows/yc-automation/*.yml \
  .github/workflows/

# Commit and push
git add .github/workflows/
git commit -m "Add YC automation workflows"
git push
```

**Step 2:** Create METRICS.md (optional but recommended)
```bash
cp ../awesome-y-combinator/.github/workflows/yc-automation/METRICS.example.md \
  METRICS.md
```

**Step 3:** Copy configuration example (optional)
```bash
cp ../awesome-y-combinator/.github/workflows/yc-automation/yc-config.example.yml \
  .github/yc-config.yml
```

**Step 4:** Enable workflows
- Go to Actions tab in your repository
- Enable Actions if prompted
- Workflows will start running on schedule

**Step 5:** Test manually
- Go to Actions → Select a workflow
- Click "Run workflow"
- Check that it creates issues correctly

---

## ⚙️ Configuration

### Basic Configuration

The workflows work out-of-the-box with sensible defaults. No configuration required!

### Advanced Configuration

Create `.github/yc-config.yml` to customize:

```yaml
startup:
  name: "Your Startup"
  stage: "pre-seed"

features:
  weekly_checkin: true
  partner_advice: true
  metrics_tracking: true
  demo_day_prep: false

schedule:
  weekly_checkin: "MON 09:00"
  metrics_review: "FRI 17:00"
```

See `yc-config.example.yml` for full options.

---

## 📊 Required Files

### METRICS.md (Recommended)

Track your key numbers:

```markdown
# Startup Metrics

## Current Week
- **WAU:** 150 (+12%)
- **MRR:** $2,500 (+8%)
- **Growth Rate:** 10%
- **Deployments:** 5
```

The metrics workflow will:
- Parse this file automatically
- Track changes over time
- Calculate growth rates
- Alert on concerning trends

### .github/yc-config.yml (Optional)

Customize behavior:
- Enable/disable features
- Adjust schedules
- Set thresholds
- Add custom advice rules

---

## 🏷️ Labels

Workflows auto-create these labels:
- `weekly-checkin` - Weekly check-in issues
- `yc-advice` - Automated advice
- `demo-day-prep` - Launch preparation
- `metrics` - Metrics reports
- `user-feedback` - User conversations
- `critical` - Urgent issues
- `automation` - Auto-generated content

---

## 🔧 Customization

### Adjust Schedules

Edit cron expressions:
```yaml
schedule:
  - cron: '0 9 * * 1'  # Monday 9 AM
```

[Crontab Guru](https://crontab.guru/) helps generate cron expressions.

### Customize Advice Rules

Edit the `partner-advice.yml` thresholds:
```yaml
# In the analyze step
if (weeklyCommits < 5) {  # Change threshold here
  advice.push(...);
}
```

### Change Metrics Format

Edit `metrics-tracking.yml` parsing logic:
```bash
# Adjust grep patterns for your format
wau=$(grep -i "WAU:" METRICS.md | ...)
```

---

## 🧪 Testing

### Test Individual Workflow

1. Go to Actions tab
2. Select workflow
3. Click "Run workflow"
4. Check created issues/comments

### Test Locally

Use [act](https://github.com/nektos/act) to test workflows locally:
```bash
# Install act
brew install act  # macOS
# or download from releases

# Run a workflow
act workflow_dispatch -j create-checkin
```

---

## 📝 Usage Patterns

### Pattern 1: Solo Founder
**Enable:** All workflows
**Focus:** Weekly check-ins, metrics tracking
**Update:** METRICS.md after every significant change

### Pattern 2: Small Team
**Enable:** Weekly check-in, partner advice
**Focus:** Team coordination, velocity tracking
**Update:** Shared check-ins, rotating responsibility

### Pattern 3: Pre-Launch Sprint
**Enable:** All workflows, frequent schedule
**Focus:** Demo day prep, daily metrics
**Update:** Demo day checklist, aggressive tracking

---

## 🐛 Troubleshooting

### Workflows Not Running

**Check:**
1. ✅ Workflows in `.github/workflows/` directory
2. ✅ Valid YAML syntax (`yamllint`)
3. ✅ Actions enabled in repository settings
4. ✅ Correct cron format
5. ✅ Repository not archived

**Test:**
```bash
# Validate YAML
yamllint .github/workflows/*.yml

# Check workflow syntax
gh workflow view
```

### No Issues Created

**Check:**
1. ✅ Workflow has `issues: write` permission
2. ✅ Workflow ran successfully (check Actions tab)
3. ✅ No errors in workflow logs
4. ✅ Labels exist or can be created

### Metrics Not Parsing

**Check:**
1. ✅ METRICS.md exists
2. ✅ Format matches expected pattern
3. ✅ Numbers extractable with grep
4. ✅ File committed to repository

**Test parsing:**
```bash
# Test metric extraction
grep -i "WAU:" METRICS.md | grep -oP '\d+'
grep -i "MRR:" METRICS.md | grep -oP '\d+'
```

---

## 🔒 Security

### Permissions

Workflows request minimal permissions:
- `contents: read` - Read repository files
- `issues: write` - Create/update issues
- `pull-requests: write` - Comment on PRs

### Secrets

No secrets required for basic functionality!

**Optional:** Add secrets for notifications:
- `SLACK_WEBHOOK` - Slack notifications
- `PUSHOVER_TOKEN` - Mobile alerts

### Private Repositories

All workflows run entirely in your private repository. No external API calls. No data leaves GitHub.

---

## 💡 Tips & Best Practices

### DO ✅
- Update metrics weekly (Friday EOD)
- Complete check-ins honestly
- Act on critical alerts immediately
- Customize thresholds for your stage
- Track learnings from users

### DON'T ❌
- Don't game the metrics
- Don't ignore workflow failures
- Don't over-configure initially
- Don't skip user conversations
- Don't disable critical alerts

---

## 📚 Resources

### YC Resources
- [YC Startup Library](https://www.ycombinator.com/library)
- [Startup School](https://www.startupschool.org/)
- [Paul Graham's Essays](http://www.paulgraham.com/articles.html)

### GitHub Actions
- [Actions Documentation](https://docs.github.com/en/actions)
- [Workflow Syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)
- [actions/github-script](https://github.com/actions/github-script)

### Tools
- [Crontab Guru](https://crontab.guru/) - Cron expression editor
- [YAML Lint](http://www.yamllint.com/) - YAML validator
- [act](https://github.com/nektos/act) - Local workflow testing

---

## 🤝 Contributing

Improvements welcome!

**Ideas for new workflows:**
- Investor update generator
- Competitive analysis tracking
- Customer health scoring
- Team velocity dashboard

**To contribute:**
1. Fork repository
2. Create workflow in this directory
3. Test thoroughly
4. Document in this README
5. Submit PR

---

## 📄 License

Apache License 2.0 - See [LICENSE](../../../LICENSE)

---

**Remember:** These workflows are tools to help you stay accountable and focused. They don't replace talking to users, shipping code, or doing the hard work of building a startup. 

**Make something people want! 🚀**
