COVER_URL="../album.png"

playerctl --follow metadata mpris:artUrl | while read i
do
  curl $i > "$COVER_URL.png"
  echo "$COVER_URL.png"
done
