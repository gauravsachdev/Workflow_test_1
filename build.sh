#!/bin/sh

# This is an example of some "process". Here it uses
# pandoc to convert from MarkDown to different formats
# and saves the output into "output_temp"

OUTPUT_DIR="output_temp"

mkdir "$OUTPUT_DIR"

dir /s /b /o:gn *.rst > "$OUTPUT_DIR"/.files.txt
while read p; do
  cp "$p" "$OUTPUT_DIR"
done <"$OUTPUT_DIR"/.files.txt
