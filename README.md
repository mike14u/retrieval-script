# Retrieval Script
> Plain old retrieval script

## Prerequisites

* Command Line Shell / Bash
* JQ installed (https://stedolan.github.io/jq/)

## Usage

Change the names of the JSON files or inner-most directory inside the double quotes from retrieval-script.sh

```
array <<< "1,2,3"
```

Change these lines from retrieval-script.sh to retrieve, fields, splittera, sorting algorithm and file name

```
(for i in ${array[@]}; do
  curl -s -X GET "https://raw.githubusercontent.com/mike14u/retrieval-script/master/$i.json" | jq '[.text,.time] | join("|")'
done) | sort -t\| -k2 > file.txt
```

Just execute

```
./retrieval-script.sh
```

The result should generate a file.txt within the same directory and from that file, the retrieved objects from the iterated list should be sorted. The said script could be customized into whatever you may need (even for single objects / non-list objects provided that you set the proper fields / sorting that you need / file name / separation character etc).
