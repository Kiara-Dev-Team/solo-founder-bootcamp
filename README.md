# Solo Founder Bootcamp 🚀

> **GitHub Actions workflows that bring Y Combinator's partner experience to solo founders—automated accountability, weekly check-ins, and startup wisdom right in your repository.**

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![GitHub Pages](https://img.shields.io/badge/docs-GitHub%20Pages-brightgreen)](https://kiara-dev-team.github.io/solo-founder-bootcamp/)

---

## 🎯 What Is This? 

**Solo Founder Bootcamp** is a collection of automated GitHub Actions workflows that simulate the Y Combinator accelerator experience for solo founders and small teams who can't (or don't want to) go through YC. 

Instead of paying for expensive coaches or accelerators, you get: 

- ✅ **Weekly check-ins** (like YC's famous Tuesday dinners)
- ✅ **Automated partner advice** based on your repo activity
- ✅ **Metrics tracking** with growth alerts
- ✅ **Demo day prep** checklists for launches
- ✅ **Curated YC wisdom** from Paul Graham, Sam Altman, and other YC partners

Everything runs **privately in your GitHub repository** using GitHub Actions.  No external services.  No data leaves GitHub.

---

## 🤔 Why Does This Exist?

### The Problem

Solo founders and small teams struggle with: 

- **Accountability** - No cofounders or mentors to keep you honest
- **Focus** - Easy to get distracted without structure
- **Metrics** - Not tracking the right numbers
- **Advice overload** - Too many resources, not enough actionable guidance
- **Isolation** - Building alone is hard

### The Solution

Y Combinator solves this with: 
- Weekly founder dinners (forced accountability)
- Partner office hours (expert advice)
- Batch community (peer support)
- Demo Day (hard deadline)

**But you can't just "get into YC."** And even if you could, maybe you don't want to give up equity or move to SF.

**Solo Founder Bootcamp** brings the best parts of the YC experience to your GitHub workflow—**for free, automated, and on your terms.**

---

## 🛠️ How Does It Work?

### 1. Copy Workflows to Your Repo

```bash
# Clone this repository
git clone https://github.com/Kiara-Dev-Team/solo-founder-bootcamp.git

# Copy workflows to your startup repo
cd your-startup-repo
cp -r ../solo-founder-bootcamp/.github/workflows/yc-automation/*.yml .github/workflows/

# Commit and push
git add .github/workflows/
git commit -m "Add Solo Founder Bootcamp workflows"
git push
```

### 2. Workflows Run Automatically

Once installed, these workflows run on schedule:

| Workflow | When | What It Does |
|----------|------|--------------|
| **Weekly Check-in** | Every Monday 9 AM | Creates structured check-in issue tracking progress, metrics, and blockers |
| **Partner Advice** | On PRs, issues, or manual | Analyzes repo activity and provides YC-style advice |
| **Metrics Tracking** | Every Friday 5 PM | Monitors your METRICS.md file and alerts on growth trends |
| **Demo Day Prep** | Every Monday 10 AM | Creates launch checklist and tracks milestone progress |

### 3. You Stay Accountable

The workflows create GitHub issues automatically: 

- Weekly check-in issues prompt you to review progress
- Advice comments appear on PRs when you're moving too slow
- Metrics alerts fire when growth stalls
- Demo day checklists keep you on track for launch

**It's like having a YC partner watching your repo.**

---

## 📚 What's Inside?

### Automation Workflows

- [`weekly-checkin.yml`](.github/workflows/yc-automation/weekly-checkin.yml) - YC-style weekly founder check-ins
- [`partner-advice.yml`](.github/workflows/yc-automation/partner-advice.yml) - Automated guidance based on repo patterns
- [`metrics-tracking.yml`](.github/workflows/yc-automation/metrics-tracking.yml) - Growth monitoring and alerts
- [`demo-day-prep.yml`](.github/workflows/yc-automation/demo-day-prep.yml) - Launch checklist generator

📖 **Full documentation:** [Automation README](.github/workflows/yc-automation/README.md)

### YC Knowledge Base

Curated advice from Y Combinator partners: 

- [Paul Graham's Do's and Don'ts](paul-graham-dos-donts.md)
- [Sam Altman's Do's and Don'ts](sam-altman-dos-donts.md)
- [Michael Seibel's Do's and Don'ts](michael-seibel-yc-dos-donts.md)
- [Garry Tan's Do's and Don'ts](garry-tan-yc-dos-donts.md)
- [YC Application Tips](application.md)
- [Solo Founder Pain Points](solo-founder-pain-points.md)

### Resources & Tools

- [Notable YC Companies](companies.md) - Learn from the best
- [YC Resources](resources.md) - Essays, videos, books
- [Community & Events](community.md) - Where to find support
- [SaaS Tools for Solo Founders](saas-tools-for-solo-founders.md)

---

## 🚀 Quick Start (5 Minutes)

### Prerequisites

- A GitHub repository (public or private)
- GitHub Actions enabled
- That's it! 

### Setup

**Step 1:** Copy workflows to your repo (see [How Does It Work?](#-how-does-it-work))

**Step 2:** Create `METRICS.md` in your repo root: 

```markdown
# Startup Metrics

## Current Week (2026-01-06)
- **WAU:** 150 users
- **MRR:** $2,500
- **Growth Rate:** 10% WoW
- **Deployments:** 5 this week
```

**Step 3:** Enable workflows in GitHub Actions tab

**Step 4:** Manually trigger "Weekly Check-in" to test

**Done!** Workflows will now run automatically. 

---

## 💡 Who Is This For? 

✅ **Perfect for:**
- Solo founders building alone
- Small teams (2-3 people) without mentors
- Bootstrapped startups needing structure
- Pre-seed founders not ready for YC
- Indie hackers wanting accountability

❌ **Not for:**
- Large teams with established processes
- Companies with existing accelerator support
- Projects that don't track metrics
- People who won't honestly fill out check-ins

---

## 📊 Example Workflows in Action

### Weekly Check-in Issue

```markdown
# Weekly Check-in - Week of January 6, 2026

## Progress
What did you ship this week? 

## Metrics
- Users: 150 (+12%)
- Revenue: $2,500 MRR (+8%)
- Growth: 10% WoW

## User Conversations
Who did you talk to?  What did you learn?

## Blockers
What's stopping you from moving faster? 

## Next Week
What's the ONE thing you'll ship? 
```

### Partner Advice Comment

```markdown
🤖 **YC Partner Advice**

⚠️ **Low commit activity detected** (3 commits this week)

YC advice: "The best founders ship constantly. Aim for daily progress."

📚 Read: [Do Things That Don't Scale](http://www.paulgraham.com/ds.html)

**Suggestion:** Set a goal to commit at least once per day, even small changes.
```

### Metrics Alert

```markdown
🚨 **CRITICAL: Negative growth detected**

Your weekly active users decreased by -5% this week.

**Action required:**
1. Talk to 10 users TODAY
2. Find out why they're churning
3. Fix the top issue this week

Remember: "The only thing that matters is growth" - Paul Graham
```

---

## 🎓 Learn More

- **[Full Documentation](https://kiara-dev-team.github.io/solo-founder-bootcamp/)** - Complete guide
- **[Automation Examples](automation-examples.md)** - See workflows in action
- **[Setup Guide](SETUP.md)** - Detailed installation
- **[Architecture](ARCHITECTURE.md)** - How it works internally

---

## 🤝 Contributing

Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md)

**Ideas for new workflows:**
- Investor update generator
- Customer health scoring
- Competitive analysis tracker
- Team velocity dashboard

---

## 📄 License

[Apache License 2.0](LICENSE) - Free to use, modify, and distribute. 

---

## 🙏 Credits

Built by the **[Kiara Dev Team](https://github.com/Kiara-Dev-Team)** for solo founders everywhere. 

Inspired by Y Combinator's incredible track record of helping founders succeed.

**Not affiliated with Y Combinator.** We just think their advice is really good.

---

## ⭐ Star This Repo

If this helps you build your startup, give us a star! ⭐

It helps other solo founders find this project. 

---

**Remember:** These workflows are tools to help you stay accountable and focused. They don't replace talking to users, shipping code, or doing the hard work of building a startup.

**Make something people want! 🚀**