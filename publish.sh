export JEKYLL_VERSION=4.2.0
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/builder:$JEKYLL_VERSION jekyll build --trace
read a
git add _site _posts _config.yml assets
git commit -m "updates"
git push

