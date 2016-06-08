# SKOS creator
This project converts the VRT thesaurus file to SKOS.

## Requirements
* Node
* [Skosify](https://github.com/NatLibFi/Skosify/wiki/Getting-Started#installation)
* Bash

## Usage
A thesaurus file can be converted to SKOS by calling:

```
./run.sh [path to VRT thesaurus file]
```

This script will first do the actual SKOS mapping using a Node script after which it is cleaned up using Skosify.
The files `thesaurus.ttl` and `thesaurus-clean.ttl` will be added to the working directory, it contains the SKOS triples in Turtle serialization.

## Advanced usage

The `run.sh` script is added simply for convenience, it combines the mapping and cleaning steps.
If required, these steps can be separated.

### Mapping
`bin/mapper` is a Node script that takes the path to a VRT thesaurus file as first input parameter and output the resulting SKOS triples in Turtle serialization to stdout.

### Cleaning
`skosify` is an external script that is used to clean up the mapped SKOS file. It does SKOS validation and adds missing relations if applicable.
