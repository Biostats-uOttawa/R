git checkout gh-pages
#git checkout main .gitignore
git rm -r .
cp -r _book/. .
git add .
git commit -a -m "update pages"
git push
git checkout main