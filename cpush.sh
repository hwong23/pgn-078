sh cpusharq.sh $1

git add .
git commit -a -m "$1"
git push
git pull
