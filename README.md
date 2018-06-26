# Command line video editor for Ubuntu.

If you have two children and want watch cartoons only on english, you can use this mass video converter.

## Features:
* Bulk video converter
* Leave only one audio track
* Delete from video intro at the start and titles at the end of video (only for *.mkv)
* Support *.mp4 and *.mkv video format

## How to use:
1. Open the file convert.sh in your favorite editor
2. **EXTENSION** use *mp4* or *mkv*
3. **AUDIO_TRACK** in most videos, English audio track is second in order
4. Cut video (optional):
    * **TIME_FROM** default is 00:00:00, it is mean from the start of the file. Format is hh:mm:ss 
    * **TIME_TO** default is empty, it is mean to end of the file. Format is hh:mm:ss
5. **CURRENT_FOLDER** folder where store videos. By default is current folder, but you can change it, just replace *\`pwd\`* to *"/home/.../video"*
5. **NEW_FOLDER** folder where new videos will save. By default it is out folder in current dir.

## Links:
* [ffmpeg](https://www.ffmpeg.org/) 
* [mkvmerge](https://mkvtoolnix.download/doc/mkvmerge.html) 


