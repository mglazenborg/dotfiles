#!/bin/bash

REMOTE_URL=$(git remote get-url origin)

if [[ "$REMOTE_URL" == https://* ]]; then
  SSH_URL=$(echo "$REMOTE_URL" | sed 's#https://github.com/#git@github.com:#')
  git remote set-url origin "$SSH_URL"
  echo "Remote changed to:"
  echo "$SSH_URL"
else
  echo "Remote is already using SSH."
fi
