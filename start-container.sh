#!/bin/bash

sudo docker network rm hadoop
sudo docker network create --driver=bridge hadoop

# start hadoop master container
sudo docker rm -f hadoop-master &> /dev/null
echo "start hadoop-master container..."
sudo docker run -itd \
                --net=hadoop \
                -p 50070:50070 \
                -p 8088:8088 \
				-p 9000:9000 \
				-p 50010:50010 \
                --name hadoop-master \
                --hostname hadoop-master \
                hadoop_cluster &> /dev/null


# start hadoop slave1 container
sudo docker rm -f hadoop-slave1 &> /dev/null
echo "start hadoop-slave1 container..."
sudo docker run -itd \
				--net=hadoop \
				--name hadoop-slave1 \
				--hostname hadoop-slave1 \
				hadoop_cluster &> /dev/null

# start hadoop slave2 container
sudo docker rm -f hadoop-slave2 &> /dev/null
echo "start hadoop-slave2 container..."
sudo docker run -itd \
				--net=hadoop \
				--name hadoop-slave2 \
				--hostname hadoop-slave2 \
				hadoop_cluster &> /dev/null

# get into hadoop master container
sudo docker exec -it hadoop-master bash
