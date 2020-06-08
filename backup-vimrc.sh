echo "Backing up vimrc to git"
cp ~/.vimrc .
git add .
git commit -m "updated vimrc"
git push -u origin master
