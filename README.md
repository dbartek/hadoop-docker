##  Hadoop Cluster on Docker Containers

### 1. Create hadoop network

```
sudo docker network create --driver=bridge hadoop
```

### 2. Start container

```
sudo ./start-container.sh
```

Start 3 containers (1 master and 2 slaves) and connect to master container
- 1 master
- 2 slaves

### 3. Start hadoop

```
./start-hadoop.sh
```

Start hadoop on containers

### 4. Run sample hadoop job

```
./run-wordcount.sh
```