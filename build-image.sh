#!/bin/bash

echo ""

echo -e "\nbuild docker hadoop image\n"
sudo docker build -t hadoop_cluster .

echo ""