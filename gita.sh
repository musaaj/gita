#!/bin/bash
if [ $1 ]; then
	MESSAGE=$1
else
	MESSAGE="Auto Commit"
fi

git add .
git commit -m "$MESSAGE"
git push
