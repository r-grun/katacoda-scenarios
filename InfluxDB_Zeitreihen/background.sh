#/bin/bash

docker run -d --name influxdb -p 8086:8086 influxdb:2.1.1
docker exec -it influxdb /bin/bash 