#!/bin/bash
# Usage: ./new_room.sh "Case Name"

if [ -z "$1" ]; then
  echo "❌ Please provide a case name"
  exit 1
fi

# Create folder name based on case name + date
CASE_NAME=$(echo "$1" | tr ' ' '-' )
DATE=$(date +%Y-%m-%d)
FOLDER="${CASE_NAME}-${DATE}"

# Make case folder
mkdir -p "$FOLDER/evidence"

# Create README.md (summary)
cat > "$FOLDER/README.md" << 'EOF'
# SOC Case Report

## Overview
- Case: 
- Date: 
- Objective: 

## Evidence & Queries
- Summarized log queries or searches  

## Findings / IOCs
- Key Indicators found  

## MITRE ATT&CK
- Techniques observed  

## Lessons Learned
- Reflection points
EOF

# Create notes.md (raw commands)
cat > "$FOLDER/notes.md" << 'EOF'
# Raw Notes

## Commands Run
- whoami
- ipconfig / ifconfig
- grep "failed login"

## Outputs
(paste outputs here)

## Screenshots
Reference images in `evidence/` folder like:
![Example](evidence/screenshot1.png)
EOF

echo "✅ Created: $(pwd)/$FOLDER"
