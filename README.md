
wget https://sp.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
unzip dvdrental.zip

docker run --rm --name sampledb \
  -p 15432:5432 \
  -e POSTGRES_PASSWORD=admin \
  -v $(pwd):/tmp/data \
  postgres:12.3-alpine

docker exec sampledb psql -U postgres -c "CREATE DATABASE dvdrental"
docker exec sampledb pg_restore -U postgres -d dvdrental.tar

rm dvdrental.{zip,tar}

docker exec -it sampledb psql -U postgres -d dvdrental
