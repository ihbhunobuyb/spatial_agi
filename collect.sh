#!/bin/bash
# Spatial AGI daily paper collection

WORKDIR="/root/.openclaw/workspace/spatial_agi"
DATE=$(date +%Y-%m-%d)
LOGFILE="$WORKDIR/cron.log"

echo "=== Spatial AGI collection started at $(date) ===" >> "$LOGFILE"

cd "$WORKDIR"

# Search arXiv for spatial/reasoning/embodied AI papers
QUERY="cat:(spatial+reasoning+OR+scene+graph+OR+embodied+AI+OR+robot+navigation)"
URL="http://export.arxiv.org/api/query?search_all=$QUERY&max_results=10&sortOrder=descending&sortBy=submittedDate"

curl -s "$URL" | grep -oP '<id>[^<]+</id>' | head -10 | sed 's/<id>//g;s|</id>||g' > /tmp/arxiv_papers.txt

# Generate daily thinking file
{
    echo "# Spatial AGI Daily Thinking - $DATE"
    echo ""
    echo "## Papers Found"
    echo ""
    while read -r url; do
        echo "- $url"
    done < /tmp/arxiv_papers.txt
    echo ""
    echo "---"
    echo "*Generated at $(date)*"
} > "$WORKDIR/daily_thinking/$DATE.md"

echo "=== Collection completed: $(date) ===" >> "$LOGFILE"