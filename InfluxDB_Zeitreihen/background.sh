#/bin/bash

docker run -d --name influxdb -p 8086:8086 influxdb:2.1.1
wait
docker exec -it influxdb /bin/bash 
wait
influx setup \
  --org dwh-org \
  --bucket dwh-bucket \
  --username dwh-user \
  --password dwhPassword123 \
  --force  

echo $?