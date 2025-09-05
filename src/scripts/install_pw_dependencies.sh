#!/bin/bash
cd executor || { echo "Failure: executor directory not found!"; exit 1; }
# Attempt to update and install ffmpeg; allow failure
{
  sudo apt-get update --fix-missing &&
  sudo apt-get install -y ffmpeg
} || echo "Warning: ffmpeg installation failed, but not it isn't mandatory, continuing anyway..."
echo "npm -v" && npm -v
