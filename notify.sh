
curl -X POST -H "Authorization: Bearer $TOKEN" -F message="`cat result.out`" https://notify-api.line.me/api/notify
