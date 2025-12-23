#!/bin/bash
# YC Automation Setup Script
# Copies YC partner automation workflows to your repository

set -e

echo "🚀 YC Partner Automation Setup"
echo "================================"
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    echo "   Please run this script from your repository root"
    exit 1
fi

# Check if .github directory exists
if [ ! -d ".github" ]; then
    echo "📁 Creating .github directory..."
    mkdir -p .github
fi

# Ask user what they want to install
echo "What would you like to install?"
echo ""
echo "1) All workflows (recommended)"
echo "2) Weekly check-in only"
echo "3) Weekly check-in + Partner advice"
echo "4) Custom selection"
echo ""
read -p "Enter your choice (1-4): " choice

# Create workflows directory
mkdir -p .github/workflows
mkdir -p .github/ISSUE_TEMPLATE

# Function to download file
download_file() {
    local url=$1
    local dest=$2
    echo "  📥 Downloading $dest..."
    curl -sL "$url" -o "$dest"
}

BASE_URL="https://raw.githubusercontent.com/Kiara-Dev-Team/awesome-y-combinator/main/.github/workflows/yc-automation"
TEMPLATE_URL="https://raw.githubusercontent.com/Kiara-Dev-Team/awesome-y-combinator/main/.github/ISSUE_TEMPLATE"

case $choice in
    1)
        echo ""
        echo "📦 Installing all workflows..."
        download_file "$BASE_URL/weekly-checkin.yml" ".github/workflows/yc-weekly-checkin.yml"
        download_file "$BASE_URL/partner-advice.yml" ".github/workflows/yc-partner-advice.yml"
        download_file "$BASE_URL/metrics-tracking.yml" ".github/workflows/yc-metrics-tracking.yml"
        download_file "$BASE_URL/demo-day-prep.yml" ".github/workflows/yc-demo-day-prep.yml"
        ;;
    2)
        echo ""
        echo "📦 Installing weekly check-in workflow..."
        download_file "$BASE_URL/weekly-checkin.yml" ".github/workflows/yc-weekly-checkin.yml"
        ;;
    3)
        echo ""
        echo "📦 Installing weekly check-in and partner advice..."
        download_file "$BASE_URL/weekly-checkin.yml" ".github/workflows/yc-weekly-checkin.yml"
        download_file "$BASE_URL/partner-advice.yml" ".github/workflows/yc-partner-advice.yml"
        ;;
    4)
        echo ""
        read -p "Install weekly-checkin? (y/n): " install_checkin
        if [ "$install_checkin" = "y" ]; then
            download_file "$BASE_URL/weekly-checkin.yml" ".github/workflows/yc-weekly-checkin.yml"
        fi
        
        read -p "Install partner-advice? (y/n): " install_advice
        if [ "$install_advice" = "y" ]; then
            download_file "$BASE_URL/partner-advice.yml" ".github/workflows/yc-partner-advice.yml"
        fi
        
        read -p "Install metrics-tracking? (y/n): " install_metrics
        if [ "$install_metrics" = "y" ]; then
            download_file "$BASE_URL/metrics-tracking.yml" ".github/workflows/yc-metrics-tracking.yml"
        fi
        
        read -p "Install demo-day-prep? (y/n): " install_demo
        if [ "$install_demo" = "y" ]; then
            download_file "$BASE_URL/demo-day-prep.yml" ".github/workflows/yc-demo-day-prep.yml"
        fi
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

# Install issue templates
echo ""
read -p "Install issue templates? (y/n): " install_templates
if [ "$install_templates" = "y" ]; then
    echo "📝 Installing issue templates..."
    download_file "$TEMPLATE_URL/weekly-checkin.md" ".github/ISSUE_TEMPLATE/weekly-checkin.md"
    download_file "$TEMPLATE_URL/user-feedback.md" ".github/ISSUE_TEMPLATE/user-feedback.md"
fi

# Create METRICS.md if it doesn't exist
if [ ! -f "METRICS.md" ]; then
    echo ""
    read -p "Create METRICS.md template? (y/n): " create_metrics
    if [ "$create_metrics" = "y" ]; then
        echo "📊 Creating METRICS.md..."
        cat > METRICS.md << 'EOF'
# Startup Metrics

## Current Week

- **WAU (Weekly Active Users):** 0
- **MRR (Monthly Recurring Revenue):** $0
- **Growth Rate:** 0%
- **Deployments This Week:** 0
- **Customer Conversations:** 0

## Key Metric

<!-- Choose ONE metric that matters most for your stage -->
- **Primary Focus:** 

## Goals for This Month

- [ ] 
- [ ] 
- [ ] 

## Notes

### What's Working


### What's Not Working


### Key Learnings


---

**Update this file every Friday and commit it to track your progress!**
EOF
    fi
fi

# Create config template
echo ""
read -p "Create .github/yc-config.yml template? (y/n): " create_config
if [ "$create_config" = "y" ]; then
    echo "⚙️  Creating config template..."
    download_file "$BASE_URL/yc-config.example.yml" ".github/yc-config.yml"
    echo "   ⚠️  Remember to edit .github/yc-config.yml with your settings!"
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "📋 Next steps:"
echo ""
echo "1. Review the installed workflow files in .github/workflows/"
echo "2. Edit .github/yc-config.yml if you created it"
echo "3. Create or update METRICS.md with your current numbers"
echo "4. Commit and push the changes:"
echo ""
echo "   git add .github/ METRICS.md"
echo "   git commit -m 'Add YC automation workflows'"
echo "   git push"
echo ""
echo "5. Enable GitHub Actions in your repository settings if not already enabled"
echo "6. Manually trigger a workflow to test: Go to Actions tab → Select workflow → Run workflow"
echo ""
echo "📚 Documentation:"
echo "   https://github.com/Kiara-Dev-Team/awesome-y-combinator/blob/main/automation.md"
echo ""
echo "🎉 You're all set! The workflows will run on their schedule."
echo ""
echo "Remember: Make something people want! 🚀"
