git checkout gh-pages
git checkout main .gitignore
git rm .
cp _books/. .
git commit -a -m "update pages"
git push
git checkout main