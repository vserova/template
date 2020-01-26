#!/bin/sh

# Clone template, update files, push to new location.

# 1. check if repository name provided

if [ -z "$1" ]
then
  echo "Usage: ./init.sh <your repository name>"
  exit -1
fi

# 2. Clone template repository
# TODO: move template to /ncbi/

echo "Clone documentation template into new repository: $1"

git clone https://github.com/vserova/template.git $1

# 3. Modify files: replace /template/ with /<your repository name>/

cd $1

echo "Prepare files for publishing..."

FILES="_includes/header.html
_layouts/default.html
pages/chapter2.md
robots.txt
static/css/footer.css"

for f in $FILES
do
	echo "Processing $f"
    sed -i 's/\/template\//\/'$1'\//g' $f
done

sed -i 's/\/template /\/'$1' /g' default_files/4025445.js
 
 
# delete .git directory 
rm -rf .git

# 4. Push directory to new git location

# init git 
echo "Push documentation to your GIT repository: https://github.com/ncbi/$1.git"
echo "This repository should be already created by NCBI GitHub admins (github-tools@ncbi.nlm.nih.gov) and you should have your GitHub login."
echo "Press [n] to stop and [y] to continue..."
read -n 1 -p "" userinput

if [ "$userinput" = "n" ]; then
  echo "Script terminated..."
  exit -1
fi

git init
git add --all
git commit -m "Initial Commit"
git remote add origin https://github.com/ncbi/$1.git
git push -u origin master
  
echo "$1 is pushed to GIT and published. Check results on Settings page: http://github.com/ncbi/$1/settings"
echo "Script finished successfully..." 
 
exit 0
