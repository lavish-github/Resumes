#!/usr/bin/env bash
# resume_sync.sh - Move resume PDF, store in structured folder, commit+push, and upload to Google Drive.
set -euo pipefail

#########################
# Configuration         #
#########################
PREFIX_FOLDER="$HOME/Desktop/Resumes"
SOURCE_PDF="/home/lavish/Downloads/JV_s_Resume_Template.pdf"
RCLONE_REMOTE="gdrive"
INITIAL_GDRIVE_FOLDER="Resumes/"

#########################
# Helper functions      #
#########################
log()  { printf "[INFO]  %s\n" "$*"; }
warn() { printf "[WARN]  %s\n" "$*"; }
err()  { printf "[ERROR] %s\n" "$*" >&2; }
die()  { err "$*"; exit 1; }

#########################
# Input prompts         #
#########################
read -rp "What is the folder name? " GIVEN_FOLDER
read -rp "What should be the commit message? " COMMIT_MSG
read -rp "What is the folder name in google drive? " GDRIVE_FOLDER

#########################
# Validation            #
#########################
[[ -f "$SOURCE_PDF" ]] || die "Source PDF not found at: $SOURCE_PDF"
[[ -n "$GIVEN_FOLDER" ]] || die "Folder name cannot be empty"
[[ -n "$COMMIT_MSG" ]] || die "Commit message cannot be empty"
[[ -n "$GDRIVE_FOLDER" ]] || die "Google Drive folder cannot be empty"

#########################
# Prepare folders       #
#########################
TARGET_FOLDER="$PREFIX_FOLDER/$GIVEN_FOLDER"
mkdir -p "$TARGET_FOLDER"
cd "$PREFIX_FOLDER" || die "Cannot cd into $PREFIX_FOLDER"

#########################
# Handle existing files #
#########################
TODAY="$(date +%Y%m%d)"
FINAL_FILE="$TARGET_FOLDER/Resume.pdf"
ARCHIVE_FILE="$TARGET_FOLDER/Resume_${TODAY}.pdf"

if [[ -f "$FINAL_FILE" ]]; then
  log "Existing Resume.pdf found. Archiving..."
  mv -f "$FINAL_FILE" "$ARCHIVE_FILE"
  log "Old resume renamed to: $(basename "$ARCHIVE_FILE")"
fi

#########################
# Move new resume       #
#########################
log "Moving resume from Downloads..."
mv -f "$SOURCE_PDF" "$FINAL_FILE"
log "New resume saved as: $FINAL_FILE"

#########################
# Git commit + push     #
#########################
COMMIT_DONE=false

log "Staging changes..."
# git add "$GIVEN_FOLDER/Resume.pdf"
git add .

if git diff --cached --quiet; then
  warn "No changes detected. Skipping commit."
else
  echo
  log "Files staged for commit:"
  git status --short
  echo

  read -rp "Do you want to proceed with commit? (y/N): " CONFIRM
  case "$CONFIRM" in
    y|Y|yes|YES)
      log "Proceeding with commit..."
      git commit -m "$COMMIT_MSG"
      git push || die "git push failed"
      COMMIT_DONE=true
      log "Git commit & push successful."
      ;;
    *)
      warn "Commit aborted by user."
      ;;
  esac
fi

#########################
# Upload to Google Drive#
#########################
if [[ "$COMMIT_DONE" = true ]]; then
  log "Uploading to Google Drive: $RCLONE_REMOTE:$INITIAL_GDRIVE_FOLDER$GDRIVE_FOLDER ..."
  rclone copy --progress "$FINAL_FILE" "$RCLONE_REMOTE:$INITIAL_GDRIVE_FOLDER$GDRIVE_FOLDER" \
    || die "Upload failed. Check rclone configuration."
  log "Upload completed successfully."
else
  warn "Skipping Google Drive upload because git commit was not completed."
fi

#########################
# Done                  #
#########################
log "Resume sync workflow finished."
