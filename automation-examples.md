# YC Automation Integration Examples

Real-world examples of how to integrate YC automation workflows into your startup repository.

## Example 1: Solo SaaS Founder

**Scenario:** Building a B2B SaaS product alone, need structure and accountability.

### Repository Setup

```
your-saas-app/
├── .github/
│   ├── workflows/
│   │   ├── weekly-checkin.yml         # Copied from awesome-yc
│   │   ├── partner-advice.yml         # Copied from awesome-yc
│   │   ├── metrics-tracking.yml       # Copied from awesome-yc
│   │   └── demo-day-prep.yml          # Copied from awesome-yc
│   ├── yc-config.yml                  # Your config
│   └── ISSUE_TEMPLATE/
│       ├── weekly-checkin.md
│       └── user-feedback.md
├── METRICS.md                          # Your metrics file
├── src/                                # Your code
└── README.md
```

### METRICS.md (Updated Weekly)

```markdown
# SaaS Metrics

## Current Week (Week 12, 2024-03-25)

- **WAU:** 45 (+18% from last week)
- **MRR:** $1,200 (+$300 this week)
- **Growth Rate:** 18.4%
- **Churn:** 0 (this week)
- **Deployments:** 8
- **Customer Conversations:** 6

## Funnel
- Visitors: 500
- Sign-ups: 50 (10% conversion)
- Activated: 45 (90% activation)
- Paying: 12 (26.7% conversion to paid)

## Notes
**What's working:** Email marketing driving 30% of signups
**What's not:** Conversion from trial to paid still low
**Learning:** Users who complete onboarding in first session have 3x higher conversion
```

### Weekly Routine

**Monday 9 AM:** 
- Automated check-in issue created
- Review last week's goals
- Set this week's priorities

**During Week:**
- Ship code daily
- Talk to 5+ users
- Create issues for each user conversation (label: `user-feedback`)
- Update METRICS.md after significant changes

**Friday 5 PM:**
- Update final metrics for the week
- Commit METRICS.md
- Automated report generated
- Review advice and alerts

### Sample Weekly Check-in

```markdown
## 🚀 Weekly Check-in - Week 12

### What did I ship this week?
- ✅ New onboarding flow (reduced time by 40%)
- ✅ Stripe integration for payments
- ✅ Email notification system
- ✅ Bug fixes and performance improvements

### Metrics
- **WAU:** 45 (+18%)
- **MRR:** $1,200 (+33%)
- **Deployments:** 8

### What's working?
- New onboarding flow is converting better
- Email marketing campaign driving quality signups
- Users love the new notification feature

### What's blocking me?
- Payment flow has edge cases causing confusion
- Need better analytics to understand drop-off points

### Next week's focus:
1. Fix payment flow edge cases
2. Add analytics to track user journeys
3. Talk to 10 users about feature X

### User conversations: 6
- 3 new users: love the simple interface
- 2 power users: want API access (noted for roadmap)
- 1 churned user: switched to competitor (price sensitive)
```

---

## Example 2: Technical Co-founders Building Mobile App

**Scenario:** Two engineers building a mobile app, need to stay aligned and ship fast.

### Repository Setup

```
mobile-app/
├── .github/
│   ├── workflows/
│   │   ├── weekly-checkin.yml
│   │   ├── partner-advice.yml
│   │   └── metrics-tracking.yml
│   └── yc-config.yml
├── METRICS.md
├── ios/
├── android/
└── backend/
```

### yc-config.yml

```yaml
startup:
  name: "AwesomeApp"
  stage: "pre-seed"
  team_size: 2

features:
  weekly_checkin: true
  partner_advice: true
  metrics_tracking: true
  demo_day_prep: false

advice:
  min_commits_per_week: 20  # Higher for 2 people
  min_user_conversations_per_week: 10  # Split between team
  
schedule:
  weekly_checkin: "MON 10:00"  # Team standup time
  metrics_review: "FRI 16:00"
```

### Team Workflow

**Monday Standup (10 AM):**
- Automated check-in issue appears
- Both co-founders add updates
- Assign next week's tasks
- Close previous week's issue together

**Daily:**
- High commit frequency (both shipping)
- User interviews split between co-founders
- Create issues for each conversation
- Regular small PRs (advice workflow comments)

**Friday Review (4 PM):**
- Update metrics together
- Review automated advice
- Plan next week
- Celebrate wins 🎉

### Sample METRICS.md

```markdown
# Mobile App Metrics

## Current Week

- **DAU:** 320 (+15%)
- **WAU:** 1,200 (+12%)
- **Retention (D7):** 45%
- **App Store Rating:** 4.6/5
- **Crashes:** 0.1% (down from 0.3%)
- **Revenue:** $0 (pre-monetization)

## This Week's Focus
- Reduce onboarding friction
- Improve D1 retention (currently 65%)
- Test new feature with 50 users

## User Feedback Summary
- 8 interviews this week
- Top request: Dark mode (5/8 users)
- Top complaint: Loading time (3/8 users)
```

---

## Example 3: Pre-Launch Startup (12 Weeks to Launch)

**Scenario:** Preparing for a big launch, need structured countdown and checklist.

### Repository Setup

```
launch-ready-startup/
├── .github/
│   ├── workflows/
│   │   ├── weekly-checkin.yml
│   │   ├── partner-advice.yml
│   │   ├── metrics-tracking.yml
│   │   └── demo-day-prep.yml         # KEY: Enabled!
│   ├── yc-config.yml
│   └── demo-day-config.yml
├── METRICS.md
├── docs/
│   ├── PITCH_DECK.md
│   └── DEMO_SCRIPT.md
└── src/
```

### demo-day-config.yml

```yaml
demo_day:
  target_date: "2024-06-15"
  weeks_until: 12
  
prep_phases:
  foundation: 8  # Weeks 1-8: Build and test
  polish: 3      # Weeks 9-11: Demo and pitch
  launch: 1      # Week 12: Final sprint

checklist:
  product:
    - Core features working
    - Demo flow polished
    - Video recorded
  metrics:
    - 100 beta users
    - 3 testimonials
    - Growth trending up
  pitch:
    - Deck complete
    - 2-min pitch timed
    - Q&A practiced
```

### Weekly Progression

**Weeks 1-8: Build Phase**
- Focus: Product development
- Ship MVP and iterate with users
- Track beta user metrics
- Build testimonial collection

**Weeks 9-11: Polish Phase**
- Focus: Demo and pitch preparation
- Record demo video
- Practice pitch deck
- Collect final testimonials
- Website and marketing ready

**Week 12: Launch Week**
- Focus: Execution
- Final QA and testing
- Launch plan execution
- Monitor metrics closely
- Be ready to iterate fast

### Sample Demo Day Prep Checklist (Week 8)

```markdown
## 🎯 Demo Day Prep - 4 Weeks Until Launch

### Progress: 65% Complete

#### Product ✅ DONE
- [x] Core product working
- [x] Demo flow polished
- [x] Key features ready
- [x] Product demo video
- [x] Screenshots prepared

#### Metrics & Data 🚧 IN PROGRESS
- [x] Metrics dashboard
- [x] Growth numbers documented
- [x] User testimonials (3/3)
- [ ] Analytics configured
- [ ] Conversion funnel tracked

#### Pitch & Presentation 📋 TODO
- [ ] Pitch deck created
- [ ] 2-minute pitch practiced
- [ ] One-liner perfected
- [ ] Problem/solution clear
- [ ] Traction ready

#### This Week's Focus
- Complete analytics setup
- Start pitch deck
- Practice demo 5 times
```

---

## Example 4: Side Project to Startup

**Scenario:** Working full-time, building startup nights and weekends.

### yc-config.yml

```yaml
startup:
  name: "SideProjectStartup"
  stage: "pre-seed"
  schedule: "nights-and-weekends"

features:
  weekly_checkin: true
  partner_advice: true
  metrics_tracking: true

advice:
  min_commits_per_week: 3  # Lower for part-time
  min_user_conversations_per_week: 3

schedule:
  weekly_checkin: "SAT 09:00"  # Weekend schedule
  metrics_review: "SUN 18:00"

notifications:
  email_notifications: true  # Important for part-timers
```

### Weekly Routine

**Saturday Morning:**
- Review weekly check-in
- Plan weekend work
- Set achievable goals

**Weekend Work:**
- 10-15 hours focused development
- 2-3 user conversations
- Ship at least one feature

**Sunday Evening:**
- Update metrics
- Review progress
- Set priorities for next weekend

### METRICS.md (Realistic for Part-Time)

```markdown
# Side Project Metrics

## Current Month (March 2024)

- **WAU:** 25 (+5 from last month)
- **MRR:** $200 (+$50)
- **Weekend Hours:** 12
- **Features Shipped:** 2
- **User Conversations:** 8 this month

## Goals
- Reach $500 MRR before considering full-time
- Get to 50 paying users
- Validate product-market fit

## Notes
**Constraint:** Limited time, must be efficient
**Strategy:** Focus on one feature per month
**Learning:** Users willing to pay validates I'm onto something
```

---

## Example 5: Developer Tool Startup

**Scenario:** Building developer tools, heavy GitHub presence.

### Special Setup

Developer tool startups benefit from integration with their own GitHub:

```
dev-tool-startup/
├── .github/
│   ├── workflows/
│   │   ├── weekly-checkin.yml
│   │   ├── partner-advice.yml
│   │   ├── metrics-tracking.yml
│   │   └── dogfood-testing.yml      # Test tool on itself!
│   └── yc-config.yml
├── METRICS.md
└── README.md
```

### METRICS.md (Developer-Focused)

```markdown
# DevTool Metrics

## Current Week

- **GitHub Stars:** 450 (+45 this week) 🌟
- **Weekly Downloads:** 1,200 (+15%)
- **Active Projects Using Tool:** 85
- **Contributors:** 12 (+2)
- **Issues Opened:** 15
- **Issues Resolved:** 18
- **Paying Customers (Pro):** 8 ($400 MRR)

## Developer Engagement
- **Discord Members:** 320
- **Documentation Views:** 2,500/week
- **Tutorial Completions:** 45

## Top Requests
1. TypeScript support (8 requests)
2. VS Code extension (6 requests)
3. Better docs (5 requests)

## This Week's Wins
- Featured on Hacker News (120 upvotes)
- First enterprise customer signed ($200/mo)
- v2.0 released with major improvements
```

---

## Common Patterns Across All Examples

### 1. Commit Early and Often
```bash
# Good: Small, frequent commits
git commit -m "Add user avatar component"
git commit -m "Fix login validation"
git commit -m "Update metrics for week 5"

# Not ideal: Rare, large commits
git commit -m "Big refactor and 20 features"
```

### 2. Label User Feedback
```bash
# Every user conversation becomes an issue
gh issue create --title "User feedback: Jane from Acme Corp" \
  --label "user-feedback" \
  --body "Wants API access, willing to pay $500/mo"
```

### 3. Update Metrics Regularly
```bash
# Friday afternoon ritual
vim METRICS.md  # Update numbers
git add METRICS.md
git commit -m "Update metrics for week 12"
git push  # Triggers automated analysis
```

### 4. Review Advice, Act on It
```bash
# When advice issue appears
1. Read the automated suggestions
2. Agree/disagree with each point
3. Create action items if valid
4. Close issue when addressed
```

### 5. Track Everything in Git
```
✅ Metrics in METRICS.md
✅ User conversations as issues
✅ Weekly check-ins as issues
✅ Progress in milestones
✅ Everything version controlled
```

---

## Integration Checklist

Use this checklist when setting up automation:

```markdown
## Setup Checklist

### Initial Setup
- [ ] Copy workflow files to .github/workflows/
- [ ] Copy issue templates to .github/ISSUE_TEMPLATE/
- [ ] Create METRICS.md from template
- [ ] Create .github/yc-config.yml (optional)
- [ ] Enable Actions in repository settings

### First Week
- [ ] Manually trigger weekly-checkin workflow (test)
- [ ] Open a PR to test partner-advice workflow
- [ ] Update METRICS.md and commit (test metrics workflow)
- [ ] Review created issues
- [ ] Adjust configuration if needed

### Establish Routine
- [ ] Set calendar reminder for Monday check-ins
- [ ] Set calendar reminder for Friday metrics update
- [ ] Create first user-feedback issue (establish pattern)
- [ ] Complete first weekly check-in
- [ ] Act on first automated advice

### Iterate
- [ ] Review what's working after 2 weeks
- [ ] Adjust thresholds in workflows
- [ ] Customize advice rules for your stage
- [ ] Add custom workflows if needed
```

---

## Tips for Success

1. **Start Simple**: Enable just weekly check-in first, add others later
2. **Be Honest**: Lying to metrics means lying to yourself
3. **Act on Advice**: If you disagree, disable it; don't ignore it
4. **Track Users**: Every conversation should create an issue
5. **Celebrate Wins**: Use check-ins to acknowledge progress
6. **Stay Focused**: One metric matters most, track it religiously

---

## Need Help?

- 📖 Read the [full automation guide](automation.md)
- 💬 Open an issue with questions
- 🤝 Contribute your own patterns
- 📧 Share your success story!

**Remember: These are tools to help you build a great startup. They don't replace the hard work, but they keep you accountable and focused. Ship something people want! 🚀**
