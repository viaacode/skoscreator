#!/bin/bash
# Converts the input thesaurus xml file to skos in turtle serialization and cleans it up using skosify

if [ $# -eq 0 ]; then
    echo "Please provide the path to a thesaurus xml file"
    exit 1
fi

file=$1
bin/mapper "$file" > thesaurus.ttl
>&2 echo "> Cleaning up..."
skosify thesaurus.ttl -o thesaurus-clean.ttl --label "VRT Thesaurus"
>&2 echo "> Done!"

