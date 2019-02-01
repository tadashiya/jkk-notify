
if [ $# -ne 1 ]; then
  exit 1
fi

# Access initial page
curl -s -c cookies -X POST --data "redirect=true&link_id=01" \
  https://jhomes.to-kousya.or.jp/search/jkknet/service/akiyaJyoukenStartInit

# Get search result page
curl -s -c cookies -b cookies -X POST  --data $1 \
  https://jhomes.to-kousya.or.jp/search/jkknet/service/akiyaJyoukenRef \
  | iconv -f sjis | grep ListTXT -A1 | tr -d '\t' | grep -v ListTXT | grep -v '-' > result.out
