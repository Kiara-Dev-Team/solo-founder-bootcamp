# YC Partner Automation System 🤖

> Automate the Y Combinator experience for solo founders using GitHub Actions

## Overview

The **YC Partner Automation System** brings key YC partner interactions to your private repository through automated workflows. Get weekly check-ins, automated advice, milestone tracking, and demo day preparation - all integrated with your Git workflow.

## Why This Matters

Solo founders often miss the structure and accountability that YC provides. This system automates:

- 📅 **Weekly Dinners** - Regular check-ins and progress reviews
- 💡 **Partner Advice** - Automated guidance based on your metrics
- 🎯 **Demo Day Prep** - Milestone tracking and presentation readiness
- 📊 **Metrics Tracking** - KPI monitoring and alerts
- 🚀 **Launch Support** - Deployment and release automation

## Core Workflows

### 1. Weekly Dinner (Check-in Automation)

Simulates the weekly YC dinner where founders share updates and get feedback.

**What it does:**
- Opens a weekly check-in issue every Monday
- Asks structured questions about your progress
- Tracks key metrics and blockers
- Provides automated insights based on patterns

**Key Questions:**
- What did you ship this week?
- What are your metrics (users, revenue, growth)?
- What's blocking you?
- What are you focusing on next week?

### 2. Partner Advice (Automated Guidance)

Provides context-aware advice based on your repository activity and metrics.

**Triggers:**
- New PR opened
- Significant code changes
- Milestone reached
- Metrics tracked in issues

**Advice Areas:**
- Product development velocity
- Code quality and technical debt
- User feedback integration
- Growth patterns and concerns
- Resource allocation

### 3. Demo Day Preparation

Tracks your progress toward major milestones and helps prepare for launches.

**Features:**
- Milestone countdown tracker
- Presentation checklist
- Metrics dashboard
- Launch preparation tasks
- Documentation review

### 4. Metrics Monitoring

Tracks key startup metrics and alerts you to important changes.

**Tracked Metrics:**
- Weekly Active Users (WAU)
- Monthly Recurring Revenue (MRR)
- Growth rate (week-over-week)
- Churn rate
- Customer Acquisition Cost (CAC)

## Quick Start Guide

### Option 1: Automated Installation (Recommended)

Use our installation script:

```bash
# Run the installation script directly
curl -sL https://raw.githubusercontent.com/Kiara-Dev-Team/awesome-y-combinator/main/.github/workflows/yc-automation/install.sh | bash

# Or download and run manually
curl -sL https://raw.githubusercontent.com/Kiara-Dev-Team/awesome-y-combinator/main/.github/workflows/yc-automation/install.sh -o install-yc.sh
chmod +x install-yc.sh
./install-yc.sh
```

The script will:
- ✅ Let you choose which workflows to install
- ✅ Create necessary directories
- ✅ Download workflow files
- ✅ Set up issue templates
- ✅ Create METRICS.md template
- ✅ Provide next steps

### Option 2: Manual Installation

Copy the workflow files from this repository to your private repo:

```bash
# Clone this repository
git clone https://github.com/Kiara-Dev-Team/awesome-y-combinator.git

# Copy workflow files to your repo
cp -r awesome-y-combinator/.github/workflows/yc-automation/*.yml \
  your-repo/.github/workflows/
```

### Step 2: Configure Your Settings

Create a configuration file at `.github/yc-config.yml`:

```yaml
# YC Automation Configuration
startup:
  name: "Your Startup Name"
  batch: "W24"  # Your cohort or "solo"
  stage: "pre-seed"  # pre-seed, seed, series-a
  
metrics:
  track_users: true
  track_revenue: true
  track_deployments: true
  
schedule:
  weekly_checkin: "MON 09:00"  # UTC time
  metrics_review: "FRI 17:00"
  
notifications:
  slack_webhook: ""  # Optional: Your Slack webhook URL
  email: "founder@startup.com"
```

### Step 3: Set Up Metrics Tracking

Add a `METRICS.md` file to your repository:

```markdown
# Startup Metrics

## Current Week

- **WAU:** 150 (+12% from last week)
- **MRR:** $2,500 (+8%)
- **Deployments:** 5
- **Customer Conversations:** 8

## Goals

- Reach 200 WAU by end of month
- Close 3 paying customers
- Ship feature X
```

### Step 4: Enable Workflows

1. Push the workflows to your repository
2. Go to Actions tab in GitHub
3. Enable workflows if prompted
4. Workflows will start automatically based on schedule

## Workflow Details

### Weekly Check-in Workflow

**File:** `.github/workflows/yc-weekly-checkin.yml`

**Schedule:** Every Monday at 9 AM UTC

**Process:**
1. Creates a new issue with check-in template
2. Tags you for input
3. Analyzes previous week's activity
4. Provides suggestions based on patterns
5. Tracks completion of previous goals

**Template Questions:**

```markdown
## 🚀 Weekly Check-in - Week of [DATE]

### What did you ship this week?
<!-- List features, fixes, or experiments deployed -->

### Metrics Update
- **Users:** 
- **Revenue:** 
- **Growth Rate:** 

### What's working well?
<!-- What's driving growth or engagement? -->

### What's blocking you?
<!-- Technical, product, or business blockers -->

### What are you focusing on next week?
<!-- Top 3 priorities -->

### Key Learnings
<!-- What did you learn from users or experiments? -->
```

### Partner Advice Workflow

**File:** `.github/workflows/yc-partner-advice.yml`

**Triggers:**
- Pull request opened
- Issue labeled "needs-advice"
- Weekly metrics update

**Advice Algorithm:**

```
IF deployment_frequency < 3_per_week THEN
  SUGGEST: "Ship faster. YC motto: Make something people want, then iterate."

IF user_conversations < 5_per_week THEN
  SUGGEST: "Talk to more users. You should be doing at least 1 customer interview per day."

IF revenue_growth < 0 THEN
  ALERT: "Revenue declining. Focus on retention and talk to churning customers."

IF code_complexity > threshold THEN
  SUGGEST: "Simplify. Don't over-engineer. Do things that don't scale."
```

### Demo Day Prep Workflow

**File:** `.github/workflows/yc-demo-day-prep.yml`

**Schedule:** Weekly, starting 8 weeks before target date

**Checklist:**
- [ ] Product demo polished
- [ ] Metrics dashboard ready
- [ ] Pitch deck created (10 slides max)
- [ ] 2-minute pitch practiced
- [ ] Demo video recorded
- [ ] Testimonials collected
- [ ] Website landing page live
- [ ] Analytics integrated
- [ ] Press kit prepared
- [ ] Investor list compiled

## Integration Patterns

### Pattern 1: Solo Founder Daily Driver

Perfect for solo founders building in private repos.

**Setup:**
- Enable all workflows
- Set aggressive check-in schedule
- Track metrics daily in METRICS.md
- Use issue labels for advice triggers

**Best Practices:**
- Update metrics after every deploy
- Answer check-in questions honestly
- Use blockers section to articulate challenges
- Review automated advice weekly

### Pattern 2: Small Team Coordination

For 2-3 person teams needing structure.

**Setup:**
- Share check-in issues across team
- Rotate weekly responder
- Track team velocity metrics
- Use PR reviews to trigger advice

**Best Practices:**
- Tag specific team members in check-ins
- Discuss advice suggestions in standup
- Use metrics to align on priorities

### Pattern 3: Pre-Launch Sprint

Intensive mode for getting to launch.

**Setup:**
- Daily check-ins instead of weekly
- Aggressive metrics tracking
- Launch countdown activated
- High-frequency advice triggers

**Best Practices:**
- Focus on launch blockers
- Track daily progress
- Review advice immediately
- Update metrics after each session

## Advanced Configuration

### Custom Advice Rules

Create `.github/yc-advice-rules.yml`:

```yaml
rules:
  - name: "Shipping Velocity"
    condition: "commits_per_week < 20"
    advice: "Increase shipping velocity. Aim for daily deploys."
    priority: "high"
    
  - name: "User Growth Stalled"
    condition: "user_growth_rate < 0.05"
    advice: "Growth stalling. Try new channels or improve onboarding."
    priority: "critical"
    
  - name: "Technical Debt"
    condition: "test_coverage < 0.70"
    advice: "Add tests for critical paths. Don't over-test early."
    priority: "medium"
```

### Metric Formulas

Define how metrics are calculated:

```yaml
metrics:
  user_growth_rate:
    formula: "(current_week_users - last_week_users) / last_week_users"
    alert_threshold: 0.10  # 10% growth minimum
    
  burn_rate:
    formula: "monthly_expenses / cash_remaining"
    alert_threshold: 12  # 12 months runway
    
  product_market_fit:
    formula: "weekly_active_users / total_users"
    target: 0.40  # 40% WAU/total is good signal
```

### Notification Channels

Configure where you receive notifications:

```yaml
notifications:
  weekly_checkin:
    - type: "github_issue"
    - type: "slack"
      webhook: "${SLACK_WEBHOOK}"
      
  critical_alerts:
    - type: "email"
      address: "founder@startup.com"
    - type: "slack"
      webhook: "${SLACK_WEBHOOK}"
      channel: "#alerts"
      
  daily_digest:
    - type: "slack"
      webhook: "${SLACK_WEBHOOK}"
      time: "17:00"  # UTC
```

## Example Scenarios

### Scenario 1: Stagnant Growth

**Detected Pattern:**
- No new features in 2 weeks
- User count flat
- Low commit activity

**Automated Advice:**
```
⚠️  Growth has stalled. Here's what YC partners would suggest:

1. Talk to users ASAP - Do 5 interviews this week
2. Ship something new - Even if it's small
3. Try a new acquisition channel
4. Review onboarding funnel
5. Check for technical issues blocking users

Remember: "Make something people want" - are you solving a real problem?
```

### Scenario 2: Over-Engineering

**Detected Pattern:**
- Low deployment frequency
- High code complexity
- No user metrics tracked

**Automated Advice:**
```
🚨 You might be over-engineering. YC advice:

1. Do things that don't scale first
2. Ship faster - aim for daily deploys
3. Cut features ruthlessly
4. Talk to users before building more
5. Track metrics before optimizing

Ask yourself: "Will this get me closer to product-market fit THIS WEEK?"
```

### Scenario 3: Strong Traction

**Detected Pattern:**
- 20%+ weekly growth
- High engagement metrics
- Good revenue growth

**Automated Advice:**
```
🎉 Strong signals! You might have product-market fit.

Next steps:
1. Document what's working (for scaling)
2. Talk to power users - understand why they love it
3. Double down on growth channels that work
4. Consider fundraising if needed
5. Start hiring for bottlenecks

Keep doing what's working. Don't pivot now!
```

## Best Practices

### DO ✅

- **Be honest with metrics** - Lying to automation means lying to yourself
- **Update regularly** - Weekly minimum, daily is better
- **Act on advice** - If you ignore it, disable it
- **Customize rules** - Make them relevant to your startup
- **Track learnings** - Document what works

### DON'T ❌

- **Don't game the metrics** - Focus on real progress
- **Don't ignore critical alerts** - They exist for a reason
- **Don't over-configure** - Start simple, add complexity as needed
- **Don't replace user conversations** - Automation aids, doesn't replace
- **Don't ignore workflow failures** - Fix them promptly

## Troubleshooting

### Workflows Not Running

**Check:**
1. Workflows are in `.github/workflows/` directory
2. YAML syntax is valid (`yamllint` your files)
3. Actions are enabled in repo settings
4. Schedule is in valid cron format
5. Repository isn't archived

### Metrics Not Tracking

**Check:**
1. `METRICS.md` exists and follows format
2. Workflow has read permissions
3. Labels are correctly applied
4. Configuration file is valid YAML

### Advice Not Relevant

**Solutions:**
1. Customize rules in `.github/yc-advice-rules.yml`
2. Adjust thresholds for your stage
3. Disable specific rules that don't apply
4. Add custom rules for your domain

## FAQs

**Q: Does this replace talking to real users?**
A: No! This automates structure and accountability, but you MUST talk to users yourself.

**Q: Can I use this without YC?**
A: Yes! This is inspired by YC principles but works for any solo founder or small team.

**Q: What if I'm pre-product?**
A: Adjust metrics to track prototyping progress, experiments run, and user interviews completed.

**Q: How much does it cost?**
A: Free! Uses GitHub Actions free tier (2,000 minutes/month).

**Q: Can I customize everything?**
A: Yes! All workflows and templates are open source and customizable.

**Q: Is my data private?**
A: Yes! Runs entirely in your private repository. No external services required.

## Resources

### YC Resources
- [YC Startup Library](https://www.ycombinator.com/library)
- [How to Start a Startup](http://startupclass.samaltman.com/)
- [Paul Graham's Essays](http://www.paulgraham.com/articles.html)

### GitHub Actions Docs
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Workflow Syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)
- [Reusable Workflows](https://docs.github.com/en/actions/using-workflows/reusing-workflows)

### More Examples
- [Integration Examples](automation-examples.md) - Real-world usage patterns
- [Workflow README](.github/workflows/yc-automation/README.md) - Technical details

### Community
- Share your setup in [Discussions](#)
- Report issues or suggest improvements
- Contribute new advice rules or templates

## Contributing

Have ideas for new workflows or advice rules? Contributions welcome!

1. Fork this repository
2. Add your workflow or rule
3. Test it in your environment
4. Submit a pull request

See [CONTRIBUTING.md](contributing.md) for guidelines.

## License

Apache License 2.0 - see [LICENSE](license.md)

---

**Remember: This automation is a tool, not a replacement for doing the hard work of building a startup. Make something people want! 🚀**
