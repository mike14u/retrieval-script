IFS=', ' read -r -a array <<< "1,2,3"

(for i in ${array[@]}; do
  curl -s -X GET "https://raw.githubusercontent.com/mike14u/retrieval-script/master/$i.json" | jq '[.text,.time] | join("|")'
done) | sort -t\| -k2 > file.txt
