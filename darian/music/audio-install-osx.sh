#!/bin/sh

ogg_files="t1darrom.ogg"

for file in $ogg_files; do
  echo Converting $file
  darian/music/sox darian/music/$file override/${file%.ogg}.wav
done

