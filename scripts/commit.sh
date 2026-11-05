#!/bin/bash

# Git commit script with WIP default message
# Usage: ./scripts/commit.sh [message]
# If no message provided, defaults to "WIP"

MESSAGE="${1:-WIP}"

git add -A
git commit -m "$(cat <<EOF
$MESSAGE

Co-Authored-By: Author
EOF
)"
git push --set-upstream origin main