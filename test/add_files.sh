#!/bin/bash

mkdir -p myfolder
mkdir -p .myhiddenfolder
echo "insert text here" > myfile.txt
echo "insert text here" > ./myfolder/myfile.txt
echo "insert text here" > ./myfolder/.myhiddenfile.txt
echo "insert text here" > ./.myhiddenfolder/myfile.txt
echo "insert text here" > .myhiddenfile.txt

# Names starting with two dots are hidden too, and are not matched by .[!.]*
mkdir -p ..mydotdotfolder
echo "insert text here" > ./..mydotdotfolder/myfile.txt
echo "insert text here" > ..mydotdotfile.txt
