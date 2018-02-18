#!/bin/bash

EXTENSION="mp4"
CURRENT_FOLDER=`pwd`
NEW_FOLDER="$CURRENT_FOLDER/out"
mkdir "$NEW_FOLDER"

for i in *."$EXTENSION";
  #do name=`echo $i | cut -d'.' -f1`;
#  do name="${i%[*.*}.mp4";
   #do name="${i%]*}";
   do name="${i/Miraculous.Tales.of.Ladybug.and.Cat.Noir.[/}";
   name="${name%]*}.$EXTENSION";

  echo $name;
#  ffmpeg -i "$i" "${name}.mov";
  ffmpeg -i "$i" -map 0:0 -map 0:2 -acodec copy -vcodec copy "$NEW_FOLDER/$name"
done
