#!/bin/bash

cd db/
pwd
docker build -t rmdocker/nginxdatabase:$version .
docker run -d rmdocker/nginxdatabase:$version
sleep 5