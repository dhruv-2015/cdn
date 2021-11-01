# This scripts perform installation of required dependencies on termux

#!/bin/bash

# Install nodejs
pkg install nodejs-lts=16.13.0 -y

if [ $? -eq 0 ]; then
   echo "Installation successful"
else
    echo "Failed to install nodejs. Exiting"
    exit 1
fi
wget https://github.com/jtvserver/jtvserver.github.io/releases/download/1.1/JTVServer.zip
if [ $? -eq 0 ]; then
   echo "Downloaded the server successfully. "
else
    echo "Failed to download the server. Is wget installed?"
    exit 1
fi
unzip JTVServer.zip
if [ $? -eq 0 ]; then
   echo "File unzipped"
else
    echo "Failed to unzip the file"
    exit 1
fi
rm JTVServer.zip
if [ $? -eq 0 ]; then
   echo "Deleted source"
else
    echo "Failed to delete the source"
fi
cd JTVServer
rm package-lock.json
if [ $? -eq 0 ]; then
   echo "Opened source"
else
    echo "Failed to open source. Is the directory present ? Exiting"
    exit 1
fi
echo "Installing dependencies"
npm install
if [ $? -eq 0 ]; then
   echo "Dependencies installation successful."
else
    echo "Failed to install dependencies. Exiting"
    exit 1
fi
echo "Downloading start server script"
cd ~
wget https://github.com/jtvserver/jtvserver.github.io/releases/download/1.1/start.sh
if [ $? -eq 0 ]; then
   echo "Script downloaded successfully"
else
    echo "Failed to download start script. Please run wget https://github.com/jtvserver/jtvserver.github.io/releases/download/1.0/start.sh to download"
    exit 1
fi
cd ~