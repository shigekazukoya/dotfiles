set today (date "+%Y-%m-%d")
cd ~/dotfiles
git add .
git commit -a -m $today
git push  -u origin main
