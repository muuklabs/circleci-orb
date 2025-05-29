#!/bin/bash
cd executor || { echo "Failure: executor directory not found!"; exit 1; }
# Attempt install, retry if it fails
sudo apt-get update
if ! sudo apt-get install -y ffmpeg; then
  echo "Initial install failed, retrying with --fix-missing..."
  sudo apt-get update --fix-missing
  sudo apt-get install -y ffmpeg || {
    echo "Second install attempt failed."; exit 1;
  }
fi
echo "npm -v" && npm -v
