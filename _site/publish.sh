docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/builder:$JEKYLL_VERSION jekyll build --trace
read a
git add _site _posts _config.yml
git commit -m "updates"
git push

