#!/bin/sh

wav_files="t1darrom.wav"

for file in $wav_files; do
  rm override/$file
done
