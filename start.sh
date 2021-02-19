#!/bin/bash
app="cogniflasktest"
docker build -t ${app} .
docker run -d -p 56735:80 \
  --name=${app} \
  -v $PWD:/app ${app}