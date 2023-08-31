git checkout arq
cp -R ~/Downloads/tmpr/pgnarchidoc/* .

git add .
git commit -a -m "$1"
git push
git pull

git checkout main

