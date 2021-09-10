#!/usr/bin/env bash

echo "start execution"
echo $PWD
pip install -r requirements.txt
robot --loglevel DEBUG  --outputdir  outputs  $PWD
