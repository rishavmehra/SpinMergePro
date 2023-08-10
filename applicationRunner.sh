#!/bin/bash

cd backEnd/
pwd
docker build -t rmdocker/spinMergePro:$version .
docker run --rm -d -p 80:8080 rmdocker/pdf-editor:$version
sleep 10
