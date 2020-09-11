#!/bin/bash

output=$(docker container list | grep 'mongodb_mongo_1')

if [ -z "$output" ] ;
then
  docker container start mongodb_mongo_1
else
  echo "container 'mongodb_mongo_1' already up and running"
fi
