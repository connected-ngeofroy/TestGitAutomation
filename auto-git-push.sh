#!/usr/bin/env bash
set -e

DEMO_REPO="$HOME/TestGitAutomation"
cd $DEMO_REPO
NOW=$(date +%s)
FILENAME="ch01_v$NOW.arexport"
touch $FILENAME
echo "this is a test" > $FILENAME
git checkout master
git pull
git add $FILENAME
git commit -m "add dummy ARExport $NOW"
git push