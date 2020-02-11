#!/bin/bash

# Convert pdf to png images
# Will produce png files in the format test-001.png
pdftoppm -png ooc.pdf test &&

# Convert the png images into a video
# %0n where n is the number of digits in the last page number. For example, if the last page is 234, then n = 3
ffmpeg -i test-%03d.png video.mp4 &&

# Delete the png files
rm *.png

# Play the video.mp4 file using MPV video player
mpv video.mp4
