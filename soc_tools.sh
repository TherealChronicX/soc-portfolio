#!/bin/bash
set -e

echo "====== SOC Helper Menu ======"
echo "1) Create a new room"
echo "2) Move screenshots from Downloads to evidence/"
echo "3) List evidence files"
echo "4) Quick Git push (stage, commit, push)"
echo "5) Exit"
echo "============================="
read -p "Choose an option: " choice

case "$choice" in
  1)
    read -p 'Case name (e.g., "Pyramid of Pain"): ' case_name
    if [ -z "$case_name" ]; then
      echo "❌ No case name provided."
      exit 1
    fi
    ./new_room.sh "$case_name"
    ;;

  2)
    mkdir -p ./evidence
    mv ~/Downloads/*.[Pp][Nn][Gg] ./evidence/ 2>/dev/null || true
    mv ~/Downloads/*.[Jj][Pp][Gg] ./evidence/ 2>/dev/null || true
    mv ~/Downloads/*.[Jj][Pp][Ee][Gg] ./evidence/ 2>/dev/null || true
    mv ~/Downloads/*.[Pp][Dd][Ff] ./evidence/ 2>/dev/null || true
    echo "✅ Moved any PNG/JPG/JPEG/PDF files (if present) to ./evidence/"
    ;;

  3)
    ls -lh --color=auto ./evidence 2>/dev/null || echo "No evidence folder/files yet."
    ;;

  4)
    # Find repo root (works from anywhere inside the repo)
    REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null || true)
    if [ -z "$REPO_ROOT" ]; then
      echo "❌ Not inside a Git repo. Run this from your project folder."
      exit 1
    fi
    cd "$REPO_ROOT"

    # Stage everything
    git add -A

    # If nothing to commit, bail gracefully
    if [ -z "$(git status --porcelain)" ]; then
      echo "ℹ️  No changes to commit."
      exit 0
    fi

    # Ask for commit message (default with timestamp)
    DEFAULT_MSG="chore: update $(date +'%Y-%m-%d %H:%M:%S')"
    read -p "Commit message [$DEFAULT_MSG]: " msg
    msg=${msg:-$DEFAULT_MSG}

    git commit -m "$msg"

    # Push to current branch; set upstream if needed
    CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    if git rev-parse --symbolic-full-name --quiet @{u} >/dev/null; then
      git push
    else
      git push -u origin "$CURRENT_BRANCH"
    fi
    echo "✅ Pushed to origin/$CURRENT_BRANCH"
    ;;

  5)
    exit 0
    ;;

  *)
    echo "Invalid choice."
    exit 1
    ;;
esac
