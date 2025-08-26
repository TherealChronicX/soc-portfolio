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

# Make case folder + evidence dir
mkdir -p "$FOLDER/evidence"

# Create README.md (summary report)
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

# Create notes.md (raw commands/outputs/screenshots)
cat > "$FOLDER/notes.md" << 'EOF'
# Raw Notes

## Commands Run
(paste them here)

## Outputs
(paste raw output here)

## Screenshots
Save images in `evidence/` and reference them here:
![Example](evidence/screenshot1.png)
EOF

# Create commands.md (cleaned-up command list)
cat > "$FOLDER/commands.md" << 'EOF'
# Commands Reference

- whoami
- ifconfig / ip addr
- grep "failed login"
EOF

# Move into the new case folder automatically
cd "$FOLDER" || exit

echo "✅ Created: $(pwd)"
