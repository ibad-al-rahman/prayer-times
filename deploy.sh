#!/bin/bash

# Setup
git switch -c deployment
years=(2024 2025)
echo "Years: ${years[@]}"

# Build step
mkdir -p temp
shopt -s dotglob
for item in *; do
    if [ "$item" != "temp" ] && [ "$item" != ".git" ]
    then
        mv "$item" temp/
    fi
done
shopt -u dotglob

for y in "${years[@]}"
do
    echo "Deploying year: $y"
    ptig v1 --year $y --input "temp/$y" --output ./ --format csv
done

# Deployment step
rm -rf temp

git config --global user.name "Ghamza-Jd"
git config --global user.email "hamzah.jadeed@gmail.com"
git add .
git commit -m "Deploying years: ${years[@]}"
git push origin deployment --force
