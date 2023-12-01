# /bin/bash
#
# author: clxxiii
#
# TODOIST.SH

FILTER="!no date"
KEYFILE="$HOME/.todoist_token"

## Get Key
if [[ ! -e $KEYFILE ]]; then
  echo "Key not found! Make a file at the keyfile's directory (default ~/.todoist_token) that contains your todoist API token"
  exit 1
else
  KEY="$(cat $KEYFILE)"
fi
BASE_URL="https://api.todoist.com/rest/v2"

url_encode() {
  jq -Rr @uri <<< "$@"
}

list() {
  curl -X GET \
    "$BASE_URL/tasks?filter=$(url_encode $FILTER)" \
    -H "Authorization: Bearer $KEY"
}

mark_complete () {
 echo $1 
}


if [[ $1 == "list" ]]; then
  list
elif [[ $1 == "mark_complete" ]]; then
  mark_complete $2
fi


