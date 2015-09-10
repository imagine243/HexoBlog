#!/bin/sh

hexo d -g

git add .
git commit -m "edit"
git push -u origin master