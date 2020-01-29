#!/bin/bash

# Convert pdf to png images
pdftoppm -png ooc.pdf test

# Convert the png images into a video
ffmpeg -i test-%03d.png video.mp4

# Play the video.mp4 file using MPV video player
mpv video.mp4
