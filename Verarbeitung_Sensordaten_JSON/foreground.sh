#/bin/bash

docker run -d --name postgres -p5432:5432 -e POSTGRES_PASSWORD=mysecretpassword postgres
docker cp "pollution_data.json" postgres:"./"
docker exec -it postgres /bin/bash
psql -U postgres