#!/bin/sh
sed -i \
         -e 's/#535353/rgb(0%,0%,0%)/g' \
         -e 's/#e8e8e8/rgb(100%,100%,100%)/g' \
    -e 's/#535353/rgb(50%,0%,0%)/g' \
     -e 's/#e4e4e4/rgb(0%,50%,0%)/g' \
     -e 's/#3a3a3a/rgb(50%,0%,50%)/g' \
     -e 's/#e6e6e6/rgb(0%,0%,50%)/g' \
	"$@"