#!/bin/bash

docker build . -t grep_test:1.0 -f tests/Dockerfile
docker run grep_test:1.0
