#!/bin/bash

echo $0
DIR=$(dirname $0)
echo "get dir"
$DIR/ngrok -config=$DIR/configure.yml start-all

