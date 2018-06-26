#!/bin/bash

EXTENSION="mkv"
AUDIO_TRACK=2
TIME_FROM="00:00:00" #default is 00:00:00 (hh:mm:ss)
TIME_TO="" #default is empty (hh:mm:ss)
CURRENT_FOLDER=`pwd`
NEW_FOLDER="$CURRENT_FOLDER/out"
cd "$CURRENT_FOLDER"
mkdir "$NEW_FOLDER"

for i in *."$EXTENSION";
do
  if [ "$EXTENSION" == "mp4" ]
    then
    ffmpeg -i "$i" -map 0:0 -map 0:"$AUDIO_TRACK" -acodec copy -vcodec copy "$NEW_FOLDER/$i"
  elif [ "$EXTENSION" == "mkv" ]
    then
    mkvmerge --split parts:"$TIME_FROM"-"$TIME_TO" -o "$NEW_FOLDER/$i" --atracks "$AUDIO_TRACK" "$i"
  fi
done
