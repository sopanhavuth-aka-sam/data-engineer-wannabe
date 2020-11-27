#!/bin/sh
# If any part of the script fails the deploy stops 
set -e

# Status message
printf "\033[0;32mDeploying updates to GitHub…\033[0m\n" 

# Build the project. 
hugo

# Add changes (in docs folder) to git. 
git add . 

# Commit changes. 
git commit -m "update site"

# Push source and deploy. 
git push origin main