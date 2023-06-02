#!/bin/sh

ORIGIN=/templates
OUTPUT=/usr/share/nginx/system-config/

mkdir -p $OUTPUT

for entry in "$ORIGIN"/*.json.tmpl
do
    template=$entry
    out="${entry%.json.tmpl}.json"  
    echo "$template -> $out"
    $ORIGIN/gomplate -f $template -o $out
done

mv $ORIGIN/*.json $OUTPUT
