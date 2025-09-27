#!/bin/sh
set -ex

icons="\
brands/github \
brands/mastodon \
brands/youtube \
brands/linkedin \
brands/facebook \
brands/strava \
brands/lastfm \
solid/circle-info \
solid/rss \
"

url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/7.x/svgs
for icon in $icons; do
  curl --fail-with-body -O "${url}/${icon}.svg"
done
