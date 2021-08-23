#!/bin/bash
cd `dirname $0`
docker build -t f763180872/elasticsearch:6.8.13 .
