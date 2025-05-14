#!/bin/bash
Xvfb :99 -screen 0 1366x768x16 &
DISPLAY=:99
ps -ef | grep Xvfb
[ -d "./executor" ] && rm -r executor
git clone https://github.com/muuklabs/executor.git
mv ./key.pub ./executor
cd executor || { echo "Failure: executor directory not found!"; exit 1; }
git checkout videoEnabled
chmod 755 gradlew
chmod 755 key.pub
sed -i 's/79.0.3945.36/114.0.5735.90/g' build.gradle
sed -i 's/0.23.0/0.33.0/g' build.gradle
cat build.gradle
