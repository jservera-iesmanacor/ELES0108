#!/bin/bash
OIFS=$IFS
IFS=$'\n'
rm -rf web/*
mkdir web/img
i=0
for md in $(find . -type f -name "*.md")
do
	echo $i
	echo $md
	cat inicio "$md" final > "${md%.md}.html"
done
mv *.html web/
cp img/* web/img/
IFS=$OIFS
