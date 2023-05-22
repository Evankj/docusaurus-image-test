#!/bin/bash
git reset HEAD --hard
git fetch origin
git checkout main
git pull origin main

npm run build

# serve the site
npm run serve
