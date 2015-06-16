#!/bin/bash

### Variables
tag=$1
port=$2
more_parameters=$3
account='waldman'
current_directory=${PWD##*/}

if [ -z $tag ]; then
    echo "You need to pass the tag as parameter"
    exit 1
fi

### Action
# Build
sudo /usr/bin/docker build -t ${account}/${current_directory}:${tag} .

# Pre run cleanup
sudo /usr/bin/docker stop $current_directory
sudo /usr/bin/docker rm $current_directory

# Run
sudo /usr/bin/docker run --name=$current_directory -d -p $port $more_parameters ${account}/${current_directory}:${tag}
