
if [ $# -ne 1 ]; then
  exit 1
fi

curl -X POST -H "Authorization: Bearer $1" -F message="`cat result.out`" https://notify-api.line.me/api/notify
