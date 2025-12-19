#!/bin/bash

# Count contigs and genome size for each assembly
for f in *.fna; do
echo -n "$f: "
contigs=$(grep -c "^>" "$f")
size=$(awk '/^>/ {next} {sum+=length($0)} END {print sum/1e6}' "$f")
echo "$contigs contigs, $size Mb"
done

