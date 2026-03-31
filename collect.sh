#!/bin/bash
# Spatial AGI daily paper collection

WORKDIR="/root/.openclaw/workspace/spatial_agi"
DATE=$(date +%Y-%m-%d)
LOGFILE="$WORKDIR/cron.log"

echo "=== Spatial AGI collection started at $(date) ===" >> "$LOGFILE"

cd "$WORKDIR"

# Retry up to 3 times with backoff
for i in 1 2 3; do
    echo "Attempt $i..." >> "$LOGFILE"
    curl -s --max-time 30 --retry 3 --retry-delay 10 \
        "https://export.arxiv.org/api/query?search_query=cat:cs.AI+OR+cat:cs.RO&max_results=5&sortBy=submittedDate&sortOrder=descending" \
        > /tmp/arxiv_response.xml 2>&1
    
    if grep -q "<entry>" /tmp/arxiv_response.xml; then
        break
    fi
    echo "Attempt $i failed, retrying in 10s..." >> "$LOGFILE"
    sleep 10
done

# Generate daily thinking file
{
    echo "# Spatial AGI Daily Thinking - $DATE"
    echo ""
    echo "## Papers Found"
    echo ""
    
    if grep -q "<entry>" /tmp/arxiv_response.xml; then
        grep -oP '(?<=<id>)[^<]+(?=</id>)' /tmp/arxiv_response.xml | head -5 | while read -r url; do
            echo "- $url"
        done
    else
        echo "(API rate limited - no papers fetched)"
    fi
    
    echo ""
    echo "---"
    echo "*Generated at $(date)*"
} > "$WORKDIR/daily_thinking/$DATE.md"

echo "=== Collection completed: $(date) ===" >> "$LOGFILE"