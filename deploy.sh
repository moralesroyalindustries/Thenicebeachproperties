#!/bin/bash
# Deploy The Nice Beach Properties website to Netlify (production)
# First time only: installs Netlify CLI, logs you in and links this folder to your Netlify site.
cd "$(dirname "$0")"
command -v netlify >/dev/null 2>&1 || npm install -g netlify-cli
netlify status >/dev/null 2>&1 || netlify login
[ -f .netlify/state.json ] || netlify link
netlify deploy --prod --dir . --message "Website update $(date '+%Y-%m-%d %H:%M')"
