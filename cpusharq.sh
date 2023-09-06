# Actualiza reporte HTML generado por Archi

git checkout arq
git pull

cp -R ~/Downloads/tmpr/pgnarchidoc/* .

git add .
git commit -a -m "$1"
git push

# git checkout main

