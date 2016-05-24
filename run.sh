#!/bin/bash
bin/mapper > thesaurus.ttl
>&2 echo "> Cleaning up..."
skosify thesaurus.ttl -o thesaurus-clean.ttl --label "VRT Thesaurus"
>&2 echo "> Done!"
