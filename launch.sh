#!/bin/bash
git reset HEAD --hard
git fetch origin
git checkout main
git pull origin main

# serve the site
npm run serve
