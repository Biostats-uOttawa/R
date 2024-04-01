git checkout gh-pages
git rm .
cp _books/. .
git commit -a -m "update pages"
git push
git checkout main