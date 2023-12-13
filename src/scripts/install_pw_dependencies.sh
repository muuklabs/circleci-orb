#!/bin/bash
cd executor || { echo "Failure: executor directory not found!"; exit 1; }
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y
echo "node -v" && node -v
sudo apt-get update && sudo apt-get install gcc g++ make
sudo apt-get update && sudo apt-get install npm
echo "npm -v" && npm -v
sudo apt-get update && sudo apt-get install -y unzip