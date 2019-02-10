
# LINE Notify token
TOKEN=token

# Search Query
QUERY="akiyaInitRM.akiyaRefM.checks=14&akiyaInitRM.akiyaRefM.checks=20"

sh /usr/src/app/search.sh $QUERY && sh /usr/src/app/notify.sh $TOKEN
