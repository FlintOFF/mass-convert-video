#!/bin/bash

EXTENSION="mp4"
CURRENT_FOLDER=`pwd`
NEW_FOLDER="$CURRENT_FOLDER/out"
mkdir "$NEW_FOLDER"

for i in *."$EXTENSION";
  # delete extension
  # do name=`echo $i | cut -d'.' -f1`;
   
  # leave only season and episode. For example: Some.name.[s01e01].other.info.mp4 => s01e01.mp4
  do name="${i/Some.name.[/}";
  name="${name%]*}.$EXTENSION";

  echo $name;
  # delete first audio track
  ffmpeg -i "$i" -map 0:0 -map 0:2 -acodec copy -vcodec copy "$NEW_FOLDER/$name"
done
