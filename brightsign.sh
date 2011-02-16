
#! /bin/bash

PRE=$1
FILE=${PRE##*/}
DIR=${PRE%/*}

BASE=${FILE%.*}
OUTPUT="$DIR/$BASE.ts"
echo "DIR: $FULLDIR"
echo "Encoding $FILE as $OUTPUT"
#ffmpeg -i $1  -f mpegts -acodec libfaac -ab 96k  -vcodec libx264 -vpre slow -b 20480k  -threads 8 $BASE.ts
#ffmpeg -i $1 -f mpegts -r 29.97 -acodec libfaac -ab 96k  -vcodec libx264 -vpre slower -b 20480k -s 1280x720  -r ntsc -threads 0 $BASE.ts

#ffmpeg -i $1  -acodec libfaac -ab 96k  -vcodec libx264 -vpre slow -b 20480k -s 1280x720  -threads 8 $BASE.mp4
#ffmpeg -i $1 -f mpegts -vcodec mpeg2video  -b 20480k -r ntsc -acodec mp2 -ab 192k b.ts
ffmpeg -i $1  -acodec mp2 -ab 192k  -vcodec libx264 -vpre slow -b 20480k -s 1280x720  -threads 8 $BASE.ts

