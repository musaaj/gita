#!/bin/bash
if [ $1 ]; then
	MESSAGE=$1
else
	MESSAGE="Auto Commit"
fi
echo $MESSAGE
git add .
git commit -m "${MESSAGE}"
git push
